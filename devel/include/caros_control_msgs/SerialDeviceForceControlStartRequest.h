// Generated by gencpp from file caros_control_msgs/SerialDeviceForceControlStartRequest.msg
// DO NOT EDIT!


#ifndef CAROS_CONTROL_MSGS_MESSAGE_SERIALDEVICEFORCECONTROLSTARTREQUEST_H
#define CAROS_CONTROL_MSGS_MESSAGE_SERIALDEVICEFORCECONTROLSTARTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Transform.h>
#include <geometry_msgs/Wrench.h>

namespace caros_control_msgs
{
template <class ContainerAllocator>
struct SerialDeviceForceControlStartRequest_
{
  typedef SerialDeviceForceControlStartRequest_<ContainerAllocator> Type;

  SerialDeviceForceControlStartRequest_()
    : base2forceframe()
    , selection()
    , wrench()
    , limits()  {
    }
  SerialDeviceForceControlStartRequest_(const ContainerAllocator& _alloc)
    : base2forceframe(_alloc)
    , selection(_alloc)
    , wrench(_alloc)
    , limits(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Transform_<ContainerAllocator>  _base2forceframe_type;
  _base2forceframe_type base2forceframe;

   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _selection_type;
  _selection_type selection;

   typedef  ::geometry_msgs::Wrench_<ContainerAllocator>  _wrench_type;
  _wrench_type wrench;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _limits_type;
  _limits_type limits;





  typedef boost::shared_ptr< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SerialDeviceForceControlStartRequest_

typedef ::caros_control_msgs::SerialDeviceForceControlStartRequest_<std::allocator<void> > SerialDeviceForceControlStartRequest;

typedef boost::shared_ptr< ::caros_control_msgs::SerialDeviceForceControlStartRequest > SerialDeviceForceControlStartRequestPtr;
typedef boost::shared_ptr< ::caros_control_msgs::SerialDeviceForceControlStartRequest const> SerialDeviceForceControlStartRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace caros_control_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'caros_common_msgs': ['/home/resps/rovi2/Rovi2/src/caros/core/caros_common_msgs/msg'], 'caros_control_msgs': ['/home/resps/rovi2/Rovi2/src/caros/interfaces/caros_control_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5679dd01d3f196d8309c0d96fb93efd1";
  }

  static const char* value(const ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5679dd01d3f196d8ULL;
  static const uint64_t static_value2 = 0x309c0d96fb93efd1ULL;
};

template<class ContainerAllocator>
struct DataType< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "caros_control_msgs/SerialDeviceForceControlStartRequest";
  }

  static const char* value(const ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
geometry_msgs/Transform base2forceframe\n\
\n\
\n\
uint32[] selection\n\
\n\
\n\
geometry_msgs/Wrench wrench\n\
\n\
\n\
float32[] limits\n\
\n\
\n\
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
\n\
================================================================================\n\
MSG: geometry_msgs/Wrench\n\
# This represents force in free space, separated into\n\
# its linear and angular parts.\n\
Vector3  force\n\
Vector3  torque\n\
";
  }

  static const char* value(const ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.base2forceframe);
      stream.next(m.selection);
      stream.next(m.wrench);
      stream.next(m.limits);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SerialDeviceForceControlStartRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::caros_control_msgs::SerialDeviceForceControlStartRequest_<ContainerAllocator>& v)
  {
    s << indent << "base2forceframe: ";
    s << std::endl;
    Printer< ::geometry_msgs::Transform_<ContainerAllocator> >::stream(s, indent + "  ", v.base2forceframe);
    s << indent << "selection[]" << std::endl;
    for (size_t i = 0; i < v.selection.size(); ++i)
    {
      s << indent << "  selection[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.selection[i]);
    }
    s << indent << "wrench: ";
    s << std::endl;
    Printer< ::geometry_msgs::Wrench_<ContainerAllocator> >::stream(s, indent + "  ", v.wrench);
    s << indent << "limits[]" << std::endl;
    for (size_t i = 0; i < v.limits.size(); ++i)
    {
      s << indent << "  limits[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.limits[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAROS_CONTROL_MSGS_MESSAGE_SERIALDEVICEFORCECONTROLSTARTREQUEST_H
