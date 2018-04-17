// Generated by gencpp from file caros_universalrobot/UrServiceSetIO.msg
// DO NOT EDIT!


#ifndef CAROS_UNIVERSALROBOT_MESSAGE_URSERVICESETIO_H
#define CAROS_UNIVERSALROBOT_MESSAGE_URSERVICESETIO_H

#include <ros/service_traits.h>


#include <caros_universalrobot/UrServiceSetIORequest.h>
#include <caros_universalrobot/UrServiceSetIOResponse.h>


namespace caros_universalrobot
{

struct UrServiceSetIO
{

typedef UrServiceSetIORequest Request;
typedef UrServiceSetIOResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct UrServiceSetIO
} // namespace caros_universalrobot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::caros_universalrobot::UrServiceSetIO > {
  static const char* value()
  {
    return "42b22819bd3f8744fa17cdb490b70f35";
  }

  static const char* value(const ::caros_universalrobot::UrServiceSetIO&) { return value(); }
};

template<>
struct DataType< ::caros_universalrobot::UrServiceSetIO > {
  static const char* value()
  {
    return "caros_universalrobot/UrServiceSetIO";
  }

  static const char* value(const ::caros_universalrobot::UrServiceSetIO&) { return value(); }
};


// service_traits::MD5Sum< ::caros_universalrobot::UrServiceSetIORequest> should match 
// service_traits::MD5Sum< ::caros_universalrobot::UrServiceSetIO > 
template<>
struct MD5Sum< ::caros_universalrobot::UrServiceSetIORequest>
{
  static const char* value()
  {
    return MD5Sum< ::caros_universalrobot::UrServiceSetIO >::value();
  }
  static const char* value(const ::caros_universalrobot::UrServiceSetIORequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::caros_universalrobot::UrServiceSetIORequest> should match 
// service_traits::DataType< ::caros_universalrobot::UrServiceSetIO > 
template<>
struct DataType< ::caros_universalrobot::UrServiceSetIORequest>
{
  static const char* value()
  {
    return DataType< ::caros_universalrobot::UrServiceSetIO >::value();
  }
  static const char* value(const ::caros_universalrobot::UrServiceSetIORequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::caros_universalrobot::UrServiceSetIOResponse> should match 
// service_traits::MD5Sum< ::caros_universalrobot::UrServiceSetIO > 
template<>
struct MD5Sum< ::caros_universalrobot::UrServiceSetIOResponse>
{
  static const char* value()
  {
    return MD5Sum< ::caros_universalrobot::UrServiceSetIO >::value();
  }
  static const char* value(const ::caros_universalrobot::UrServiceSetIOResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::caros_universalrobot::UrServiceSetIOResponse> should match 
// service_traits::DataType< ::caros_universalrobot::UrServiceSetIO > 
template<>
struct DataType< ::caros_universalrobot::UrServiceSetIOResponse>
{
  static const char* value()
  {
    return DataType< ::caros_universalrobot::UrServiceSetIO >::value();
  }
  static const char* value(const ::caros_universalrobot::UrServiceSetIOResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAROS_UNIVERSALROBOT_MESSAGE_URSERVICESETIO_H
