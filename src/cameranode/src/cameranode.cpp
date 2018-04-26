#include <ros/ros.h>

#include<vector>

#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <cameranode/Point.h>
//in case of dual subscription
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
//#include <rw/geometry/analytic/quadratics/QuadraticUtil.hpp>
#include <rw/math/Vector3D.hpp>
#include <rw/math/Transform3D.hpp>
#include <rwlibs/algorithms/PointPairsRegistration.hpp>

#include <pcl_ros/transforms.h>
#include <pcl/common/transforms.h>
#include <pcl/common/transformation_from_correspondences.h>

ros::Publisher pub;

void 
cloud_cb (const sensor_msgs::ImageConstPtr& left_image_msg, const sensor_msgs::ImageConstPtr& right_image_msg)
//cloud_cb (const sensor_msgs::ImageConstPtr& image_msg)
{
  //CV_BRIDGE is used to convert the ros message image to an opencv mat
  //cv_bridge is an interface between ros and opencv (well like a bridge)
  cv_bridge::CvImagePtr cv_left_ptr;
  cv_bridge::CvImagePtr cv_right_ptr;
  cv_left_ptr = cv_bridge::toCvCopy(left_image_msg, sensor_msgs::image_encodings::RGB8);
  cv_right_ptr = cv_bridge::toCvCopy(right_image_msg, sensor_msgs::image_encodings::RGB8);

  pcl::TransformationFromCorrespondences transform_c;
  //Eigen::Vector3f temp_Rob;
  //Eigen::Vector3f temp_Cam;

  //temp_Rob << -0.06002, -0.20037, 0.46613;
  //temp_Cam << -0.08308628207854543, -0.1904336470505383, 1.205031184611948;
  //transform_c.add(temp_Cam, temp_Rob, 1);
  rw::math::Vector3D<double> temp_Rob1(-0.06002, -0.20037, 0.46613);
  rw::math::Vector3D<double> temp_Cam1(-0.08308628207854543, -0.1904336470505383, 1.205031184611948);
  rwlibs::algorithms::PointPairsRegistration::PointPair point1(temp_Cam1, temp_Rob1);

  rw::math::Vector3D<double> temp_Rob2(0.1099, -0.77788, 0.18927);
  rw::math::Vector3D<double> temp_Cam2(0.3827500038405834, -0.1683784735310505, 2.086532712043689);
  rwlibs::algorithms::PointPairsRegistration::PointPair point2(temp_Cam2, temp_Rob2);
  //temp_Rob << 0.1099, -0.77788, 0.18927;
  //temp_Cam << 0.3827500038405834, -0.1683784735310505, 2.086532712043689;
  //transform_c.add(temp_Cam, temp_Rob, 1);

  rw::math::Vector3D<double> temp_Rob3(-0.0640, -0.56061, 0.60977);
  rw::math::Vector3D<double> temp_Cam3(0.3445377787978062, -0.3687999750049349, 1.455763162798731);
  rwlibs::algorithms::PointPairsRegistration::PointPair point3(temp_Cam3, temp_Rob3);
  //temp_Rob << -0.0640, -0.56061, 0.60977;
  //temp_Cam << 0.3445377787978062, -0.3687999750049349, 1.455763162798731;
  //transform_c.add(temp_Cam, temp_Rob, 1);

  rw::math::Vector3D<double> temp_Rob4(-0.31189, -0.20405, 0.25163);
  rw::math::Vector3D<double> temp_Cam4(-0.03794559691965034, 0.1739435102953402, 1.176939931214733);
  rwlibs::algorithms::PointPairsRegistration::PointPair point4(temp_Cam4, temp_Rob4);
  //temp_Rob << -0.31189, -0.20405, 0.25163;
  //temp_Cam << -0.03794559691965034, 0.1739435102953402, 1.176939931214733;
  //transform_c.add(temp_Cam, temp_Rob, 1);

  rw::math::Vector3D<double> temp_Rob5(-0.42444, -0.03563, 0.70678);
  rw::math::Vector3D<double> temp_Cam5(-0.01984250765270423, -0.08751494180660228, 0.6636803081910827);
  rwlibs::algorithms::PointPairsRegistration::PointPair point5(temp_Cam5, temp_Rob5);
  //temp_Rob << -0.42444, -0.03563, 0.70678;
  //temp_Cam << -0.01984250765270423, -0.08751494180660228, 0.6636803081910827;
  //transform_c.add(temp_Cam, temp_Rob, 1);
  std::vector<rwlibs::algorithms::PointPairsRegistration::PointPair> Pvec = {point1,point2,point3,point4,point5};
  rw::math::Transform3D<double> transformation = rwlibs::algorithms::PointPairsRegistration::pointPairRegistrationSVD(Pvec);
  std::cout << transformation << std::endl;


  rw::math::Vector3D<double> temp_Robs1(-0.06002, -0.20037, 0.46613);
  rw::math::Vector3D<double> temp_Cams1(-0.08308628207854543, -0.1904336470505383, 1.205031184611948);
  
  rw::math::Vector3D<double> temp_Robs2(0.1099, -0.77788, 0.18927);
  rw::math::Vector3D<double> temp_Cams2(0.3827500038405834, -0.1683784735310505, 2.086532712043689);

  rw::math::Vector3D<double> temp_Robs3(-0.0640, -0.56061, 0.60977);
  rw::math::Vector3D<double> temp_Cams3(0.3445377787978062, -0.3687999750049349, 1.455763162798731);

  rw::math::Vector3D<double> temp_Robs4(-0.31189, -0.20405, 0.25163);
  rw::math::Vector3D<double> temp_Cams4(-0.03794559691965034, 0.1739435102953402, 1.176939931214733);

  rw::math::Vector3D<double> temp_Robs5(-0.42444, -0.03563, 0.70678);
  rw::math::Vector3D<double> temp_Cams5(-0.01984250765270423, -0.08751494180660228, 0.6636803081910827);

  rw::math::Vector3D<double> wub1 = transformation * temp_Cams1;
  rw::math::Vector3D<double> wub2 = transformation * temp_Cams2;
  rw::math::Vector3D<double> wub3 = transformation * temp_Cams3;
  rw::math::Vector3D<double> wub4 = transformation * temp_Cams4;
  rw::math::Vector3D<double> wub5 = transformation * temp_Cams5;
  std::cout << wub1 - temp_Robs1 << std::endl;
  std::cout << wub2 - temp_Robs2 << std::endl;
  std::cout << wub3 - temp_Robs3 << std::endl;
  std::cout << wub4 - temp_Robs4 << std::endl;
  std::cout << wub5 - temp_Robs5 << std::endl;


/*
//  const Eigen::Matrix4f transformation = transform_c.getTransformation().matrix();
//  const Eigen::Affine3f transformation = transform_c.getTransformation();
  Eigen::Vector4f temp_Robs1;
  Eigen::Vector4f temp_Cams1;
  temp_Robs1 << -0.06002, -0.20037, 0.46613, 1;
  temp_Cams1 << -0.08308628207854543, -0.1904336470505383, 1.205031184611948, 1;
 
  Eigen::Vector4f temp_Robs2;
  Eigen::Vector4f temp_Cams2;
  temp_Robs2 << 0.1099, -0.77788, 0.18927, 1;
  temp_Cams2 << 0.3827500038405834, -0.1683784735310505, 2.086532712043689, 1;

  Eigen::Vector4f temp_Robs3;
  Eigen::Vector4f temp_Cams3;
  temp_Robs3 << -0.0640, -0.56061, 0.60977, 1;
  temp_Cams3 << 0.3445377787978062, -0.3687999750049349, 1.455763162798731, 1;

  Eigen::Vector4f temp_Robs4;
  Eigen::Vector4f temp_Cams4;
  temp_Robs4 << -0.31189, -0.20405, 0.25163, 1;
  temp_Cams4 << -0.03794559691965034, 0.1739435102953402, 1.176939931214733, 1;

  Eigen::Vector4f temp_Robs5;
  Eigen::Vector4f temp_Cams5;
  temp_Robs5 << -0.42444, -0.03563, 0.70678, 1;
  temp_Cams5 << -0.01984250765270423, -0.08751494180660228, 0.6636803081910827, 1;
  //std::cout << temp_Robs << std::endl;
  //Eigen::Vector4f wub = transformation * temp_Robs;
  //std::cout << wub << std::endl;
  //std::cout << temp_Cams << std::endl;
  Eigen::Vector4f wub1 = transformation * temp_Cams1;
  Eigen::Vector4f wub2 = transformation * temp_Cams2;
  Eigen::Vector4f wub3 = transformation * temp_Cams3;
  Eigen::Vector4f wub4 = transformation * temp_Cams4;
  Eigen::Vector4f wub5 = transformation * temp_Cams5;
  std::cout << wub1 - temp_Robs1 << std::endl;
  std::cout << wub2 - temp_Robs2 << std::endl;
  std::cout << wub3 - temp_Robs3 << std::endl;
  std::cout << wub4 - temp_Robs4 << std::endl;
  std::cout << wub5 - temp_Robs5 << std::endl;
  //any code would go here
*/

  ROS_INFO("the callback is started");

  ROS_INFO("creating the point to send");
  
  
  
  //Here the output variable is initialized
  cameranode::Point* temp = new cameranode::Point;
  temp->x = 1.0;
  temp->y = 1.5;
  temp->z = 0.5;
  
  // Publish the data
  ROS_INFO("point is being send");
  pub.publish(*temp);
}

int
main (int argc, char** argv)
{
  // Initialize ROS
  ros::init (argc, argv, "my_pcl_tutorial");
  ros::NodeHandle nh;
  ROS_INFO("handler has been initialized");
  // Create a ROS subscriber for the input image
 // ros::Subscriber sub = nh.subscribe<sensor_msgs::Image> ("input", 1, cloud_cb);
 // ROS_INFO("subscriber is initialized");
//use below instead to subscribe to multiple topics

  message_filters::Subscriber<sensor_msgs::Image> left_image(nh, "/camera/left/image_raw", 1);
  message_filters::Subscriber<sensor_msgs::Image> right_image(nh, "/camera/right/image_raw", 1);
 
  message_filters::TimeSynchronizer<sensor_msgs::Image, sensor_msgs::Image> sync(left_image, right_image, 10);

  sync.registerCallback(cloud_cb);

  // Create a ROS publisher for the output point
  pub = nh.advertise<cameranode::Point> ("cameranode/output", 1);
  // Spin
  ROS_INFO("publisher is initialised");
  ros::spin();
}
