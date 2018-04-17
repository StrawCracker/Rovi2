// Generated by gencpp from file caros_control_msgs/GripperGripQ.msg
// DO NOT EDIT!


#ifndef CAROS_CONTROL_MSGS_MESSAGE_GRIPPERGRIPQ_H
#define CAROS_CONTROL_MSGS_MESSAGE_GRIPPERGRIPQ_H

#include <ros/service_traits.h>


#include <caros_control_msgs/GripperGripQRequest.h>
#include <caros_control_msgs/GripperGripQResponse.h>


namespace caros_control_msgs
{

struct GripperGripQ
{

typedef GripperGripQRequest Request;
typedef GripperGripQResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GripperGripQ
} // namespace caros_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::caros_control_msgs::GripperGripQ > {
  static const char* value()
  {
    return "d23b32153f93e9b4d774b55a7d161889";
  }

  static const char* value(const ::caros_control_msgs::GripperGripQ&) { return value(); }
};

template<>
struct DataType< ::caros_control_msgs::GripperGripQ > {
  static const char* value()
  {
    return "caros_control_msgs/GripperGripQ";
  }

  static const char* value(const ::caros_control_msgs::GripperGripQ&) { return value(); }
};


// service_traits::MD5Sum< ::caros_control_msgs::GripperGripQRequest> should match 
// service_traits::MD5Sum< ::caros_control_msgs::GripperGripQ > 
template<>
struct MD5Sum< ::caros_control_msgs::GripperGripQRequest>
{
  static const char* value()
  {
    return MD5Sum< ::caros_control_msgs::GripperGripQ >::value();
  }
  static const char* value(const ::caros_control_msgs::GripperGripQRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::caros_control_msgs::GripperGripQRequest> should match 
// service_traits::DataType< ::caros_control_msgs::GripperGripQ > 
template<>
struct DataType< ::caros_control_msgs::GripperGripQRequest>
{
  static const char* value()
  {
    return DataType< ::caros_control_msgs::GripperGripQ >::value();
  }
  static const char* value(const ::caros_control_msgs::GripperGripQRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::caros_control_msgs::GripperGripQResponse> should match 
// service_traits::MD5Sum< ::caros_control_msgs::GripperGripQ > 
template<>
struct MD5Sum< ::caros_control_msgs::GripperGripQResponse>
{
  static const char* value()
  {
    return MD5Sum< ::caros_control_msgs::GripperGripQ >::value();
  }
  static const char* value(const ::caros_control_msgs::GripperGripQResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::caros_control_msgs::GripperGripQResponse> should match 
// service_traits::DataType< ::caros_control_msgs::GripperGripQ > 
template<>
struct DataType< ::caros_control_msgs::GripperGripQResponse>
{
  static const char* value()
  {
    return DataType< ::caros_control_msgs::GripperGripQ >::value();
  }
  static const char* value(const ::caros_control_msgs::GripperGripQResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAROS_CONTROL_MSGS_MESSAGE_GRIPPERGRIPQ_H
