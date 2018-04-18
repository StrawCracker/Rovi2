#ifndef CAROS_ENSENSO_CAMERA_H
#define CAROS_ENSENSO_CAMERA_H

#include <caros/camera_interface.h>

#include <pcl/pcl_config.h>
#include <pcl/common/io.h>
#include <pcl/common/time.h>
#include <pcl/io/eigen.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl_conversions/pcl_conversions.h>
#include <Eigen/Geometry>
#include <Eigen/StdVector>
#include <pcl/io/boost.h>
#include <boost/thread.hpp>
#include <boost/lexical_cast.hpp>

#include <pcl/io/grabber.h>
#include <pcl/common/synchronizer.h>

#include <camera_info_manager/camera_info_manager.h>

#include <nxLib.h>  // Ensenso SDK

#include <ros/ros.h>
#include <cv_bridge/cv_bridge.h>
#include <utility>
#include <vector>
#include <string>
#include <map>

namespace pcl
{
struct PointXYZ;
template <typename T>
class PointCloud;

class EnsensoCamera : public Grabber, public caros::CameraInterface
{
  typedef std::pair<pcl::PCLImage, pcl::PCLImage> PairOfImages;

 public:
  /** @cond */
  typedef std::shared_ptr<EnsensoCamera> Ptr;
  typedef std::shared_ptr<const EnsensoCamera> ConstPtr;

  // Define callback signature typedefs
  typedef void(sig_cb_ensenso_point_cloud)(const pcl::PointCloud<pcl::PointXYZ>::Ptr &);

  typedef void(sig_cb_ensenso_images)(const boost::shared_ptr<PairOfImages> &, const boost::shared_ptr<PairOfImages> &);

  typedef void(sig_cb_ensenso_point_cloud_images)(const pcl::PointCloud<pcl::PointXYZ>::Ptr &,
                                                  const boost::shared_ptr<PairOfImages> &,
                                                  const boost::shared_ptr<PairOfImages> &);
  /** @endcond */

  /** @brief Constructors */
  EnsensoCamera();
  explicit EnsensoCamera(std::string serial);

  /** @brief Destructor inherited from the Grabber interface. It never throws. */
  virtual ~EnsensoCamera() throw();

  bool getRawImagePair(sensor_msgs::ImagePtr &img_left, sensor_msgs::ImagePtr &img_right, uint64_t &timestamp);

  bool init();

  bool shutdown();

  /** @brief Searches for available devices
     * @returns The number of Ensenso devices connected */
  int enumDevices() const;

  /** @brief Opens an Ensenso device
   * @param[in] device The device ID to open
   * @return True if successful, false otherwise */
  bool openDevice(std::string serial_no);

  /** @brief Closes the Ensenso device
   * @return True if successful, false otherwise */
  bool closeDevice();

  /** @brief Start the point cloud and or image acquisition
   * @note Opens device "0" if no device is open */
  void start();

  /** @brief Stop the data acquisition */
  void stop();

  /** @brief Check if the data acquisition is still running
   * @return True if running, false otherwise */
  bool isRunning() const;

  /** @brief Check if a TCP port is opened
   * @return True if open, false otherwise */
  bool isTcpPortOpen() const;

  /** @brief Get class name
   * @returns A string containing the class name */
  std::string getName() const;

  /** @brief Uses the passed parameters to configure the Ensenso settings
   * @note See [Capture tree item](http://www.ensenso.de/manual/index.html?capture.htm) for more
   * details about the parameters.
   * @returns A bool indicating if parameters was set */
  bool setupParameters(std::map<std::string, bool> bool_parameters,
                       std::map<std::string, int> int_parameters,
                       std::map<std::string, double> double_parameters);

  /** @brief Capture a single point cloud and store it
   * @param[out] cloud The cloud to be filled
   * @return True if successful, false otherwise
   * @warning A device must be opened and not running */
  bool grabSingleCloud(sensor_msgs::PointCloud2Ptr &cloud);

  /** @brief Set up the Ensenso sensor and API to do 3D extrinsic calibration using the Ensenso 2D patterns
   * @param[in] grid_spacing
   * @return True if successful, false otherwise
   *
   * Configures the capture parameters to default values (eg: @c projector = @c false and @c front_light = @c true)
   * Discards all previous patterns, configures @c grid_spacing
   * @warning A device must be opened and must not be running.
   * @note See the [Ensenso manual](http://www.ensenso.de/manual/index.html?calibratehandeyeparameters.htm) for more
   * information about the extrinsic calibration process.
   * @note [GridSize](http://www.ensenso.de/manual/index.html?gridsize.htm) item is protected in the NxTree, you can't
   *modify it.
   */
  bool initExtrinsicCalibration(const double grid_spacing) const;

  /** @brief Clear calibration patterns buffer */
  bool clearCalibrationPatternBuffer() const;

  /** @brief Captures a calibration pattern
   * @return the number of calibration patterns stored in the nxTree, -1 on error
   * @warning A device must be opened and must not be running.
   * @note You should use @ref initExtrinsicCalibration before */
  int captureCalibrationPattern() const;

  /** @brief Estimate the calibration pattern pose
   * @param[out] pattern_pose the calibration pattern pose
   * @param[in] average Specifies if all pattern point coordinates in the buffer
   * should be averaged to produce a more precise pose measurement. This will only
   * produce a correct result if all patterns in the buffer originate from
   * multiple images of the same pattern in the same pose.
   * @return true if successful, false otherwise
   * @warning A device must be opened and must not be running.
   * @note At least one calibration pattern must have been captured before, use @ref captureCalibrationPattern before */
  bool estimateCalibrationPatternPose(Eigen::Affine3d &pattern_pose, const bool average = false) const;

  /** @brief Computes the calibration matrix using the collected patterns and the robot poses vector
   * @param[in] robot_poses A list of robot poses, 1 for each pattern acquired (in the same order)
   * @param[out] json The extrinsic calibration data in JSON format
   * @param[in] setup Moving or Fixed, please refer to the Ensenso documentation
   * @param[in] target Please refer to the Ensenso documentation
   * @param[in] guess_tf Guess transformation for the calibration matrix (translation in meters)
   * @param[in] pretty_format JSON formatting style
   * @return True if successful, false otherwise
   * @warning This can take up to 120 seconds
   * @note Check the result with @ref getResultAsJson.
   * If you want to permanently store the result, use @ref storeEEPROMExtrinsicCalibration. */
  bool computeCalibrationMatrix(
      const std::vector<Eigen::Affine3d, Eigen::aligned_allocator<Eigen::Affine3d>> &robot_poses, std::string &json,
      int &iterations, double &reprojection_error,
      const std::string setup = "Moving",  // Default values: Moving or Fixed
      const std::string target = "Hand",   // Default values: Hand or Workspace
      const Eigen::Affine3d &guess_tf = Eigen::Affine3d::Identity(), const bool pretty_format = true) const;

  /** @brief Copy the link defined in the Link node of the nxTree to the EEPROM
   * @return True if successful, false otherwise
   * Refer to @ref setExtrinsicCalibration for more information about how the EEPROM works.\n
   * After calling @ref computeCalibrationMatrix, this enables to permanently store the matrix.
   * @note The target must be specified (@ref computeCalibrationMatrix specifies the target) */
  bool storeEEPROMExtrinsicCalibration() const;

  /** @brief Load  calibration parameters from the EEPROM for the camera to use them.
   * @return True if successful, false otherwise
   */
  bool loadEEPROMExtrinsicCalibration() const;

  /** @brief Clear the extrinsic calibration stored in the EEPROM by writing an identity matrix
   * @return True if successful, false otherwise */
  bool clearEEPROMExtrinsicCalibration();

  /** @brief Update Link node in NxLib tree
   * @param[in] target "Hand" or "Workspace" for example
   * @param[in] euler_angle
   * @param[in] rotation_axis
   * @param[in] translation Translation in meters
   * @return True if successful, false otherwise
   * @warning Translation are in meters, rotation angles in radians! (stored in mm/radians in Ensenso tree)
   * @note If a calibration has been stored in the EEPROM, it is copied in the Link node at nxLib tree start.
   * This method overwrites the Link node but does not write to the EEPROM.
   *
   * More information on the parameters can be found in [Link
   *node](http://www.ensenso.de/manual/index.html?cameralink.htm)
   * section of the Ensenso manual.
   *
   * The point cloud you get from the Ensenso is already transformed using this calibration matrix.
   * Make sure it is the identity transformation if you want the original point cloud! (use @ref
   *clearEEPROMExtrinsicCalibration)
   * Use @ref storeEEPROMExtrinsicCalibration to permanently store this transformation */
  bool setExtrinsicCalibration(const double euler_angle, Eigen::Vector3d &rotation_axis,
                               const Eigen::Vector3d &translation, const std::string target = "Hand");

  /** @brief Update Link node in NxLib tree with an identity matrix
   * @param[in] target "Hand" or "Workspace" for example
   * @return True if successful, false otherwise */
  bool setExtrinsicCalibration(const std::string target = "Hand");

  /** @brief Update Link node in NxLib tree
   * @param[in] transformation Transformation matrix
   * @param[in] target "Hand" or "Workspace" for example
   * @return True if successful, false otherwise
   * @warning Translation are in meters, rotation angles in radians! (stored in mm/radians in Ensenso tree)
   * @note If a calibration has been stored in the EEPROM, it is copied in the Link node at nxLib tree start.
   * This method overwrites the Link node but does not write to the EEPROM.
   *
   * More information on the parameters can be found in [Link
   *node](http://www.ensenso.de/manual/index.html?cameralink.htm)
   * section of the Ensenso manual.
   *
   * The point cloud you get from the Ensenso is already transformed using this calibration matrix.
   * Make sure it is the identity transformation if you want the original point cloud! (use @ref
   *clearEEPROMExtrinsicCalibration)
   * Use @ref storeEEPROMExtrinsicCalibration to permanently store this transformation */
  bool setExtrinsicCalibration(const Eigen::Affine3d &transformation, const std::string target = "Hand");

  /** @brief Obtain the number of frames per second (FPS) */
  float getFramesPerSecond() const;

  /** @brief Open TCP port to enable access via the [nxTreeEdit](http://www.ensenso.de/manual/software_components.htm)
   * program.
   * @param[in] port The port number
   * @return True if successful, false otherwise */
  bool openTcpPort(const int port = 24000);

  /** @brief Close TCP port program
   * @return True if successful, false otherwise
   * @warning If you do not close the TCP port the program might exit with the port still open, if it is the case
   * use @code ps -ef @endcode and @code kill PID @endcode to kill the application and effectively close the port. */
  bool closeTcpPort(void);

  /** @brief Returns the full NxLib tree as a JSON string
   * @param[in] pretty_format JSON formatting style
   * @return A string containing the NxLib tree in JSON format */
  std::string getTreeAsJson(const bool pretty_format = true) const;

  /** @brief Returns the Result node (of the last command) as a JSON string
   * @param[in] pretty_format JSON formatting style
   * @return A string containing the Result node in JSON format
   */
  std::string getResultAsJson(const bool pretty_format = true) const;

  /** @brief Get meta information for a camera.
   * @param[in] cam A string containing the camera (Left or Right)
   * @param[out] cam_info meta information for a camera.
   * @return True if successful, false otherwise
   * @note See: [sensor_msgs/CameraInfo](http://docs.ros.org/api/sensor_msgs/html/msg/CameraInfo.html)
   */
  bool getCameraInfo(std::string cam, sensor_msgs::CameraInfo &cam_info) const;

  /** @brief Get the Euler angles corresponding to a JSON string (an angle axis transformation)
   * @param[in] json A string containing the angle axis transformation in JSON format
   * @param[out] x The X translation
   * @param[out] y The Y translation
   * @param[out] z The Z translation
   * @param[out] w The yaW angle
   * @param[out] p The Pitch angle
   * @param[out] r The Roll angle
   * @return True if successful, false otherwise
   * @warning The units are meters and radians!
   * @note See: [transformation page](http://www.ensenso.de/manual/transformation.htm) in the EnsensoSDK documentation
   */
  bool jsonTransformationToEulerAngles(const std::string &json, double &x, double &y, double &z, double &w, double &p,
                                       double &r) const;

  /** @brief Get the angle axis parameters corresponding to a JSON string
   * @param[in] json A string containing the angle axis transformation in JSON format
   * @param[out] alpha Euler angle
   * @param[out] axis Axis vector
   * @param[out] translation Translation vector
   * @return True if successful, false otherwise
   * @warning The units are meters and radians!
   * @note See: [transformation page](http://www.ensenso.de/manual/transformation.htm) in the EnsensoSDK documentation
   */
  bool jsonTransformationToAngleAxis(const std::string json, double &alpha, Eigen::Vector3d &axis,
                                     Eigen::Vector3d &translation) const;

  /** @brief Get the JSON string corresponding to a 4x4 matrix
   * @param[in] transformation The input transformation
   * @param[out] matrix A matrix containing JSON transformation
   * @return True if successful, false otherwise
   * @warning The units are meters and radians!
   * @note See: [ConvertTransformation page](http://www.ensenso.de/manual/index.html?cmdconverttransformation.htm) in
   * the EnsensoSDK documentation
   */
  bool jsonTransformationToMatrix(const std::string transformation, Eigen::Affine3d &matrix) const;

  /** @brief Get the JSON string corresponding to the Euler angles transformation
   * @param[in] x The X translation
   * @param[in] y The Y translation
   * @param[in] z The Z translation
   * @param[in] w The yaW angle
   * @param[in] p The Pitch angle
   * @param[in] r The Roll angle
   * @param[out] json A string containing the Euler angles transformation in JSON format
   * @param[in] pretty_format JSON formatting style
   * @return True if successful, false otherwise
   * @warning The units are meters and radians!
   * @note See: [transformation page](http://www.ensenso.de/manual/transformation.htm) in the EnsensoSDK documentation
   */
  bool eulerAnglesTransformationToJson(const double x, const double y, const double z, const double w, const double p,
                                       const double r, std::string &json, const bool pretty_format = true) const;

  double getPatternGridSpacing() const;
  bool enableFrontLight(const bool enable) const;
  bool enableProjector(const bool enable) const;

  /** @brief Get the JSON string corresponding to an angle axis transformation
   * @param[in] x The X angle
   * @param[in] y The Y angle
   * @param[in] z The Z angle
   * @param[in] rx The X component of the Euler axis
   * @param[in] ry The Y component of the Euler axis
   * @param[in] rz The Z component of the Euler axis
   * @param[in] alpha The Euler rotation angle
   * @param[out] json A string containing the angle axis transformation in JSON format
   * @param[in] pretty_format JSON formatting style
   * @return True if successful, false otherwise
   * @warning The units are meters and radians! (the Euler axis doesn't need to be normalized)
   * @note See: [transformation page](http://www.ensenso.de/manual/transformation.htm) in the EnsensoSDK documentation
   */
  bool angleAxisTransformationToJson(const double x, const double y, const double z, const double rx, const double ry,
                                     const double rz, const double alpha, std::string &json,
                                     const bool pretty_format = true) const;

  /** @brief Get the JSON string corresponding to a 4x4 matrix
   * @param[in] matrix The input matrix
   * @param[out] json A string containing the matrix transformation in JSON format
   * @param[in] pretty_format JSON formatting style
   * @return True if successful, false otherwise
   * @warning The units are meters and radians!
   * @note See: [ConvertTransformation page](http://www.ensenso.de/manual/index.html?cmdconverttransformation.htm)
   * in the EnsensoSDK documentation */
  bool matrixTransformationToJson(const Eigen::Affine3d &matrix, std::string &json,
                                  const bool pretty_format = true) const;

  /** @brief Reference to the NxLib tree root
   * @warning You must handle NxLib exceptions manually when playing with @ref root_ !
   * See ensensoExceptionHandling in ensenso_grabber.cpp */
  boost::shared_ptr<const NxLibItem> root_;

  /** @brief Reference to the camera tree
   *  @warning You must handle NxLib exceptions manually when playing with @ref camera_ ! */
  NxLibItem camera_;

 protected:
  /** @brief Whether an Ensenso device is opened or not */
  bool device_open_;

  /** @brief Whether an TCP port is opened or not */
  bool tcp_open_;

  /** @brief Whether an Ensenso device is running or not */
  bool running_;

  /** @brief Point cloud capture/processing frequency */
  pcl::EventFrequency frequency_;

  /** @brief Mutual exclusion for FPS computation */
  mutable boost::mutex fps_mutex_;

  /** @brief Convert an Ensenso time stamp into a PCL/ROS time stamp
   * @param[in] ensenso_stamp
   * @return PCL stamp
   * The Ensenso API returns the time elapsed from January 1st, 1601 (UTC); on Linux OS the reference time is January
   * 1st, 1970 (UTC).
   * See [time-stamp page](http://www.ensenso.de/manual/index.html?json_types.htm) for more info about the time stamp
   * conversion. */
  pcl::uint64_t static getPCLStamp(const double ensenso_stamp);

  /** @brief Get OpenCV image type corresponding to the parameters given
   * @param channels number of channels in the image
   * @param bpe bytes per element
   * @param isFlt is float
   * @return the OpenCV type as a string */
  std::string static getOpenCVType(const int channels, const int bpe, const bool isFlt);

  /** @brief Continuously asks for images and or point clouds data from the device and publishes them if available.
   * PCL time stamps are filled for both the images and clouds grabbed (see @ref getPCLStamp)
   * @note The cloud time stamp is the RAW image time stamp */
  void processGrabbing();
};
}  // namespace pcl

#endif  // CAROS_ENSENSO_CAMERA_H
