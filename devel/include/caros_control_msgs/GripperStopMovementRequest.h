// Generated by gencpp from file caros_control_msgs/GripperStopMovementRequest.msg
// DO NOT EDIT!


#ifndef CAROS_CONTROL_MSGS_MESSAGE_GRIPPERSTOPMOVEMENTREQUEST_H
#define CAROS_CONTROL_MSGS_MESSAGE_GRIPPERSTOPMOVEMENTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace caros_control_msgs
{
template <class ContainerAllocator>
struct GripperStopMovementRequest_
{
  typedef GripperStopMovementRequest_<ContainerAllocator> Type;

  GripperStopMovementRequest_()
    {
    }
  GripperStopMovementRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GripperStopMovementRequest_

typedef ::caros_control_msgs::GripperStopMovementRequest_<std::allocator<void> > GripperStopMovementRequest;

typedef boost::shared_ptr< ::caros_control_msgs::GripperStopMovementRequest > GripperStopMovementRequestPtr;
typedef boost::shared_ptr< ::caros_control_msgs::GripperStopMovementRequest const> GripperStopMovementRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace caros_control_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'caros_common_msgs': ['/home/resps/rovi2/Rovi2/src/caros/core/caros_common_msgs/msg'], 'caros_control_msgs': ['/home/resps/rovi2/Rovi2/src/caros/interfaces/caros_control_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "caros_control_msgs/GripperStopMovementRequest";
  }

  static const char* value(const ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GripperStopMovementRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::caros_control_msgs::GripperStopMovementRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CAROS_CONTROL_MSGS_MESSAGE_GRIPPERSTOPMOVEMENTREQUEST_H
