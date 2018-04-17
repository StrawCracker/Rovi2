// Generated by gencpp from file caros_sensor_msgs/PoseSensorState.msg
// DO NOT EDIT!


#ifndef CAROS_SENSOR_MSGS_MESSAGE_POSESENSORSTATE_H
#define CAROS_SENSOR_MSGS_MESSAGE_POSESENSORSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Transform.h>

namespace caros_sensor_msgs
{
template <class ContainerAllocator>
struct PoseSensorState_
{
  typedef PoseSensorState_<ContainerAllocator> Type;

  PoseSensorState_()
    : header()
    , poses()
    , ids()
    , qualities()  {
    }
  PoseSensorState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , poses(_alloc)
    , ids(_alloc)
    , qualities(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::geometry_msgs::Transform_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Transform_<ContainerAllocator> >::other >  _poses_type;
  _poses_type poses;

   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _ids_type;
  _ids_type ids;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _qualities_type;
  _qualities_type qualities;





  typedef boost::shared_ptr< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> const> ConstPtr;

}; // struct PoseSensorState_

typedef ::caros_sensor_msgs::PoseSensorState_<std::allocator<void> > PoseSensorState;

typedef boost::shared_ptr< ::caros_sensor_msgs::PoseSensorState > PoseSensorStatePtr;
typedef boost::shared_ptr< ::caros_sensor_msgs::PoseSensorState const> PoseSensorStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace caros_sensor_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'caros_common_msgs': ['/home/resps/rovi2/Rovi2/src/caros/core/caros_common_msgs/msg'], 'caros_sensor_msgs': ['/home/resps/rovi2/Rovi2/src/caros/interfaces/caros_sensor_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "36099bad0734951e3bf310e00a5d4523";
  }

  static const char* value(const ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x36099bad0734951eULL;
  static const uint64_t static_value2 = 0x3bf310e00a5d4523ULL;
};

template<class ContainerAllocator>
struct DataType< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "caros_sensor_msgs/PoseSensorState";
  }

  static const char* value(const ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Represents the state of a pose sensor.\n\
\n\
# Header containing information about time and frameid\n\
Header header\n\
\n\
# Poses of the sensor\n\
geometry_msgs/Transform[] poses\n\
\n\
# IDs of the poses\n\
uint32[] ids\n\
\n\
# Quality of the sensor pose measurements [0;1] 0=invalid, 1=high quality.\n\
float32[] qualities\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Transform\n\
# This represents the transform between two coordinate frames in free space.\n\
\n\
Vector3 translation\n\
Quaternion rotation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.poses);
      stream.next(m.ids);
      stream.next(m.qualities);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PoseSensorState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::caros_sensor_msgs::PoseSensorState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "poses[]" << std::endl;
    for (size_t i = 0; i < v.poses.size(); ++i)
    {
      s << indent << "  poses[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Transform_<ContainerAllocator> >::stream(s, indent + "    ", v.poses[i]);
    }
    s << indent << "ids[]" << std::endl;
    for (size_t i = 0; i < v.ids.size(); ++i)
    {
      s << indent << "  ids[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.ids[i]);
    }
    s << indent << "qualities[]" << std::endl;
    for (size_t i = 0; i < v.qualities.size(); ++i)
    {
      s << indent << "  qualities[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.qualities[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAROS_SENSOR_MSGS_MESSAGE_POSESENSORSTATE_H