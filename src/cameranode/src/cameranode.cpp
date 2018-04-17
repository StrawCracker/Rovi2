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
