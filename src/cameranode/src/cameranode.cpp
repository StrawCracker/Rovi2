
#include <ros/ros.h>

#include <math.h>
#include <image_transport/image_transport.h>
#include <array>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <cameranode/Point.h>
#include <fstream>
//in case of dual subscription
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <ros/console.h> 
//#include "/home/student/catkin_ws/src/cameranode/src/methods.hpp"
#include <rw/math/Transform3D.hpp>
#include <rw/math/Vector3D.hpp>
#include <rw/math/Rotation3D.hpp>
#include <cmath>
#include <stdint.h>
#include <iostream>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/video/tracking.hpp"
//#include "opencv2/core.hpp"
#include "opencv2/calib3d/calib3d.hpp"
//#include "draw_utils.hpp"

#define X_0 0		// start position x
#define X_END 5.5
#define Y_0 9.5		// start position y
#define Y_END 8.8
#define Z_0 132
#define Z_END 139
#define DT 0.1		// timestep
#define V_0 100		// start velocity
#define V_X 0
#define V_Y 0
#define V_Z 0
#define ALPHA 1.2	// start angle
#define T_0 0		// initial time

#define G 9.82      // g

#define X_NOISE 0.01
#define Y_NOISE 0.01
#define PROCESS_NOISE 0.1
#define MEASUREMENT_NOISE 10
#define ERROR_COV_POST_NOISE 0.1

#define GET_DATA 0
using namespace std;
using namespace cv;

/*
 * This function returns the contours find by using color segmentation
 * It needs the upper and lower limits for the color it is looking for, and the image that is used
 */
bool init = false;
bool showImages = true;
bool destroy = false;
KalmanFilter KF2;
float calcX(float point, float noise = 0)
{
    return point+noise;
}

float calcY(float point, float noise = 0)
{
    return point+noise;
}

float calcZ(float point, float noise =0)
{
    return point+noise;

}


 KalmanFilter velocityKF()
{

     KalmanFilter KF(6, 3, 0);
    KF.transitionMatrix = ( Mat_<float>(6, 6) << 1, 0, 0,DT,0, 0,
                                                    0,1,0,0,DT,0,
                                                    0,0,1,0,0,DT,
                                                    0,0,0,1,0,0,
                                                    0,0,0,0,1,0,
                                                    0,0,0,0,0,1);
    KF.statePost.at<float>(0)= calcX(T_0);
    KF.statePost.at<float>(1)= calcY(T_0);
    KF.statePost.at<float>(2) = calcZ(T_0);
    KF.statePost.at<float>(3)= V_X;
    KF.statePost.at<float>(4)= V_Y;
    KF.statePost.at<float>(5)= V_Z;
    setIdentity(KF.measurementMatrix);
    setIdentity(KF.processNoiseCov,  Scalar::all(PROCESS_NOISE));
    setIdentity(KF.measurementNoiseCov,  Scalar::all(MEASUREMENT_NOISE));
	// Define transitionMatrix which includes position and velocity

	return KF;
}

 Point3f predict( KalmanFilter &KF)
{
     Mat prediction = KF.predict();
     Point3f predictedPoint(prediction.at<float>(0),prediction.at<float>(1),prediction.at<float>(2) );
    cout << " predicted point: x " << predictedPoint << endl;
    // Do a prediction and return as  Point
    return predictedPoint;


}

 Point3f correct( KalmanFilter &KF,  Mat measurement)
{
    // Do a correction and return as  Point


     Mat correction = KF.correct(measurement);
         Point3f correctedPoint(correction.at<float>(0),correction.at<float>(1),correction.at<float>(2));
    cout << " corrected " << correctedPoint << endl;

    return correctedPoint;

}

void skipCorrect( KalmanFilter &KF)
{
	// Skip correction as described in pdf
    KF.statePost = KF.statePre;
    KF.errorCovPost = KF.errorCovPre;
}





vector<vector<Point> > getContours(Mat hsv,Scalar lower_color_limits, Scalar upper_color_limits)
{
    Mat rw;
    vector<vector<Point> > contours;
    vector<Vec4i> hierarchy;
    //Find the image values that are in the right color intervals
    inRange(hsv,lower_color_limits,upper_color_limits,rw);
    // find the contours that are in the specified color segment
    findContours( rw, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );
    
    return contours;
}

/*
 * This function finds the relevant contours and returns their moments
 */
Moments getMoments(vector<vector<Point> > contours_blue)
{
    Moments mu;
    double roundLim = 0;
    double areaLim = 100;
    for(int i = 0; i < contours_blue.size();)
    {
        // the area is found
        double area = contourArea( Mat(contours_blue[i]));
	//if(area > 1000)
	// ROS_INFO("\n area %f \n ", area);
        // the density of the pixels are found
        double density = (4*3.14* fabs(area))/pow(arcLength(contours_blue[i],false),2);
	//cout << "AREA " << area << endl;
	//cout << "density " << density << endl;
	//if(area > 1000)
	//ROS_INFO("\n density %f \n ", density);
        // A check to ensure high density for pixels, and only contours with a certain size
        if(  density < roundLim || area < areaLim)
            contours_blue.erase(contours_blue.begin()+i);
        else
        {
	     roundLim = density;
	     areaLim = area;
             mu = moments(contours_blue[i],false);
             break;
        }

    }
    return mu;
}

/*
 * This functions returns the center of the contours, by using the moments
 */
Mat getCenter(Moments mu)
{
    Mat_<double> mc(3,1);

        Point2f m = Point2f(mu.m10/mu.m00,mu.m01/mu.m00);


        mc(0,0) = m.x;
        mc(1,0) = m.y;
        mc(2,0) = 1;
   //ROS_INFO("contours size %d, %d", m.x,m.y );
    return mc;
}

/*
 * function to draw centers
 */
void drawCenters(Mat src, Mat_<double> m, string name, Scalar color)
{
    Point2f dmc;
    dmc.x =  m(0,0);
    dmc.y = m(1,0);
    circle(src,dmc,10,color,-1,8,0);
    namedWindow(name, WINDOW_NORMAL);
    //show image
    imshow(name,src);
   
}

 Mat constructProjectionMat(int left)
{
    Mat_<double> proj(3,4);
    proj(0,0) = 1197.6268;
    proj(0,1) = 0;
    proj(0,2) = 565.47;
    if(left)
        proj(0,3) = 0;
    else
        proj(0,3) = -143.042;
    proj(1,0) = 0;
    proj(1,1) = 1197.6268;
    proj(1,2) = 330.428;
    proj(1,3) = 0;
    proj(2,0) = 0;
    proj(2,1) = 0;
    proj(2,2) = 1;
    proj(2,3) = 0;

    return proj;
}


Mat_<double> get2DPoint(Mat proj, Point3f p)
{
    Mat_<double> normPoint(4,1);
    normPoint(0,0) = p.x;
    normPoint(1,0) = p.y;
    normPoint(2,0) = p.z;
    normPoint(3,0) = 1;
    
    
    return normPoint;
}


ros::Publisher pub;

void 
cloud_cb (const sensor_msgs::ImageConstPtr& left_image_msg, const sensor_msgs::ImageConstPtr& right_image_msg)
{
  //CV_BRIDGE is used to convert the ros message image to an opencv mat
  //cv_bridge is an interface between ros and opencv (well like a bridge)
  cv_bridge::CvImagePtr cv_left_ptr;
  cv_bridge::CvImagePtr cv_right_ptr;
  cv_left_ptr = cv_bridge::toCvCopy(left_image_msg, sensor_msgs::image_encodings::BGR8);
  cv_right_ptr = cv_bridge::toCvCopy(right_image_msg, sensor_msgs::image_encodings::BGR8);

  //any code would go here
    const  Mat &img_l = cv_left_ptr->image;
    const  Mat &img_r = cv_right_ptr->image;
    //imshow("virker", img_l);
    
    Mat hsv_l;
    Mat hsv_r;
    cvtColor( img_l, hsv_l, CV_BGR2HSV);
    cvtColor( img_r, hsv_r, CV_BGR2HSV);

    auto project_l = constructProjectionMat(1);
    auto project_r = constructProjectionMat(0);


    

    //get centers

    cvtColor( img_l, hsv_l, CV_BGR2HSV);
    cvtColor( img_r, hsv_r, CV_BGR2HSV);

    Scalar red_l(0,180,110);
    Scalar red_h(16,255,255);

    vector<vector<Point> > contours_l = getContours(hsv_l,red_l,red_h);
    vector<vector<Point> > contours_r = getContours(hsv_r,red_l,red_h);

    Moments moment_l = getMoments(contours_l);
    Moments moment_h = getMoments(contours_r);

    auto m_l = getCenter(moment_l);
    auto m_r = getCenter(moment_h);

    
    Point3f kf2;
    if(!init)
    {
	init = true;	
	KF2 = velocityKF();
    }
    else 
 	kf2 = predict(KF2);
  
  //Here the output variable is initialized
  cameranode::Point* temp = new cameranode::Point;

     Mat point3D(1, 1, CV_64FC4);
     Mat leftPoint(1, 1, CV_64FC2);
     Mat rightPoint(1, 1, CV_64FC2);
    leftPoint.at< Vec2d>(0)[0] = m_l.at<double>(0, 0);
    leftPoint.at< Vec2d>(0)[1] = m_l.at<double>(1, 0);
    rightPoint.at< Vec2d>(0)[0] = m_r.at<double>(0, 0);
    rightPoint.at< Vec2d>(0)[1] = m_r.at<double>(1, 0);
    cv::triangulatePoints(project_l, project_r, leftPoint, rightPoint, point3D);
     Mat temp2 = point3D / point3D.at<double>(3, 0);

     Mat_<float> meas(3, 1);
    meas(0) = calcX(temp2.at<double>(0,0), X_NOISE);
    meas(1) = calcY(temp2.at<double>(1,0), Y_NOISE);
    meas(2) = calcZ(temp2.at<double>(2,0), Y_NOISE);
    if(!isnan(meas(0)))
    	correct(KF2, meas);
    else 
	skipCorrect(KF2);
     Mat normPoint(1, 1, CV_64FC4);
    normPoint= get2DPoint(project_l,kf2);
    Mat pointLeft(1, 1, CV_64FC4), pointRight(1, 1, CV_64FC4);
    pointLeft = project_l*normPoint;
    pointRight = project_r*normPoint;
    Mat normLeft = pointLeft/pointLeft.at<double>(2,0);
    Mat normRight = pointRight/pointRight.at<double>(2,0);	

      
    
    cout << " predicted Point " << kf2 << endl; 

    rw::math::Vector3D<double> ball_pos(meas(0), meas(1), meas(2)); 
    

    if(isnan(ball_pos(0)))
    {
       temp->x = kf2.x;
       temp->y = kf2.y;
       temp->z = kf2.z;
    }
    else
    {
    //  cout << ball_pos <<   endl;
    	temp->x = ball_pos(0);
    	temp->y = ball_pos(1);
    	temp->z = ball_pos(2);
    }

    rw::math::Vector3D<double> Vec(-0.843878,0.0963546,0.956266);
    rw::math::Rotation3D<double> Rot(-0.371022,-0.621007,0.690429,-0.894702,0.0399345,-0.444875,0.248699,-0.782787,-0.570433);
    rw::math::Transform3D<double> Trans(Vec,Rot);

    rw::math::Vector3D<double> aboutToSend(temp->x,temp->y,temp->z);
    aboutToSend = Trans * aboutToSend;
    temp->x = aboutToSend(0);
    temp->y = aboutToSend(1);
    temp->z = aboutToSend(2);

      cout << "point being send is : ";
    //  cout << point3D <<   endl;
      cout << temp->x << ", " << temp->y << ", " << temp->z <<   endl;
   //
  if(waitKey(1) == 97)
  {
      destroy = true;
      showImages = false;
  } 
  if(showImages)
  {

    drawCenters(img_r,normRight,"right",Scalar(0,255,0));
    drawCenters(img_l,normLeft,"left", Scalar(0,255,0));
    drawCenters(img_r,m_r,"right",Scalar(255,0,0));
    drawCenters(img_l,m_l,"left", Scalar(255,0,0));
  }
  if(destroy)
  {
      destroy = false;
      destroyWindow("right");
      destroyWindow("left");
  }
  
  // Publish the data
  //ROS_INFO("point is being send %d , %d , %d \n", temp->x, temp->y, temp->z);
  pub.publish(*temp);
  if(GET_DATA)
  {
  ofstream sent_data;
  sent_data.open("sent_values.txt", ios_base::app);
  sent_data << temp->x << " " << temp->y << " " << temp->z << endl;

  ofstream predicted_data;
  predicted_data.open("predicted_values.txt", ios_base::app);
  predicted_data << kf2.x << " " << kf2.y << " " << kf2.z << endl;
 
  
  ofstream found_data;
  found_data.open("found_values.txt", ios_base::app);
  found_data << meas(0) << " " << meas(1) << " " << meas(2) << endl;
  }
}

int
main (int argc, char** argv)
{
	auto KF2 = velocityKF();
  // Initialize ROS
  ros::init (argc, argv, "my_pcl_tutorial");
  ros::NodeHandle nh;
  //ROS_INFO("handler has been initialized");
  // Create a ROS subscriber for the input image
 // ros::Subscriber sub = nh.subscribe<sensor_msgs::Image> ("input", 1, cloud_cb);
  //ROS_INFO("subscriber is initialized");
//use below instead to subscribe to multiple topics

  message_filters::Subscriber<sensor_msgs::Image> left_image(nh, "/camera/left/image_raw", 1);
  message_filters::Subscriber<sensor_msgs::Image> right_image(nh, "/camera/right/image_raw", 1);
  
 
  message_filters::TimeSynchronizer<sensor_msgs::Image, sensor_msgs::Image> sync(left_image, right_image, 10);

  sync.registerCallback(cloud_cb);

  // Create a ROS publisher for the output point
  pub = nh.advertise<cameranode::Point> ("cameranode/output", 1);
  // Spin
 // ROS_INFO("publisher is initialised");
   
  ros::spin();
}
