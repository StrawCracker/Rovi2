#include <ros/ros.h>

#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <cameranode/Point.h>
//in case of dual subscription
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>

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
  Eigen::Vector3f temp_Rob;
  Eigen::Vector3f temp_Cam;

 // temp_Rob << -0.38570, -0.44196, 0.58128;
 // temp_Cam << 0.3786852282018022, -0.05589587448303715, 1.086132868225872;
 // transform_c.add(temp_Cam, temp_Rob, 1);

  temp_Rob << -0.22627, -0.11403, 0.3330;
  temp_Cam << -0.1024605874888508, 0.05339226685674515, 1.130754369431207;
  transform_c.add(temp_Cam, temp_Rob, 1);

  temp_Rob << 0.252, -0.36974, 0.42757;
  temp_Cam << 0.08570536310699839, -0.2288544399945376, 1.321856583413587;
  transform_c.add(temp_Cam, temp_Rob, 1);

  temp_Rob << -0.3626, -0.22902, 0.18725;
  temp_Cam << 0.02997637511324269, 0.2674841314496603, 1.196379645386563;
  transform_c.add(temp_Cam, temp_Rob, 1);

  temp_Rob << -0.5855, -0.5755, 0.68037;
  temp_Cam << 0.07591882590844298, 0.04810576969453317, 0.5748828124999978;
  transform_c.add(temp_Cam, temp_Rob, 1);

  const Eigen::Matrix4f transformation = transform_c.getTransformation().matrix();
  
//  Eigen::Vector4f temp_Robs1;
//  Eigen::Vector4f temp_Cams1;
//  temp_Robs1 << -0.38570, -0.44196, 0.58128, 1;
//  temp_Cams1 << 0.3786852282018022, -0.05589587448303715, 1.086132868225872, 1;

  Eigen::Vector4f temp_Robs2;
  Eigen::Vector4f temp_Cams2;
  temp_Robs2 << -0.22627, -0.11403, 0.3330, 1;
  temp_Cams2 << -0.1024605874888508, 0.05339226685674515, 1.130754369431207, 1;

//  Eigen::Vector4f temp_Robs3;
//  Eigen::Vector4f temp_Cams3;
//  temp_Robs3 << 0.252, -0.36974, 0.42757, 1;
//  temp_Cams3 << 0.08570536310699839, -0.2288544399945376, 1.321856583413587, 1;

  Eigen::Vector4f temp_Robs4;
  Eigen::Vector4f temp_Cams4;
  temp_Robs4 << -0.3626, -0.22902, 0.18725, 1;
  temp_Cams4 << 0.02997637511324269, 0.2674841314496603, 1.196379645386563, 1;

  Eigen::Vector4f temp_Robs5;
  Eigen::Vector4f temp_Cams5;
  temp_Robs5 << -0.5855, -0.5755, 0.68037, 1;
  temp_Cams5 << 0.07591882590844298, 0.04810576969453317, 0.5748828124999978, 1;
  //std::cout << temp_Robs << std::endl;
  //Eigen::Vector4f wub = transformation * temp_Robs;
  //std::cout << wub << std::endl;
  //std::cout << temp_Cams << std::endl;
//  Eigen::Vector4f wub1 = transformation * temp_Cams1;
  Eigen::Vector4f wub2 = transformation * temp_Cams2;
//  Eigen::Vector4f wub3 = transformation * temp_Cams3;
  Eigen::Vector4f wub4 = transformation * temp_Cams4;
  Eigen::Vector4f wub5 = transformation * temp_Cams5;
 // std::cout << wub1 - temp_Robs1 << std::endl;
  std::cout << wub2 - temp_Robs2 << std::endl;
//  std::cout << wub3 - temp_Robs3 << std::endl;
  std::cout << wub4 - temp_Robs4 << std::endl;
  std::cout << wub5 - temp_Robs5 << std::endl;
  //any code would go here


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
