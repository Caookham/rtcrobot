// Generated by gencpp from file rtcrobot_actions/MissionFeedback.msg
// DO NOT EDIT!


#ifndef RTCROBOT_ACTIONS_MESSAGE_MISSIONFEEDBACK_H
#define RTCROBOT_ACTIONS_MESSAGE_MISSIONFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rtcrobot_actions
{
template <class ContainerAllocator>
struct MissionFeedback_
{
  typedef MissionFeedback_<ContainerAllocator> Type;

  MissionFeedback_()
    : status()
    , mission_name()  {
    }
  MissionFeedback_(const ContainerAllocator& _alloc)
    : status(_alloc)
    , mission_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _mission_name_type;
  _mission_name_type mission_name;





  typedef boost::shared_ptr< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct MissionFeedback_

typedef ::rtcrobot_actions::MissionFeedback_<std::allocator<void> > MissionFeedback;

typedef boost::shared_ptr< ::rtcrobot_actions::MissionFeedback > MissionFeedbackPtr;
typedef boost::shared_ptr< ::rtcrobot_actions::MissionFeedback const> MissionFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rtcrobot_actions::MissionFeedback_<ContainerAllocator1> & lhs, const ::rtcrobot_actions::MissionFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status &&
    lhs.mission_name == rhs.mission_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rtcrobot_actions::MissionFeedback_<ContainerAllocator1> & lhs, const ::rtcrobot_actions::MissionFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rtcrobot_actions

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0a7e12fdec1796b54ca6a5b259cdbe32";
  }

  static const char* value(const ::rtcrobot_actions::MissionFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0a7e12fdec1796b5ULL;
  static const uint64_t static_value2 = 0x4ca6a5b259cdbe32ULL;
};

template<class ContainerAllocator>
struct DataType< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rtcrobot_actions/MissionFeedback";
  }

  static const char* value(const ::rtcrobot_actions::MissionFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define a feedback message\n"
"# Status\n"
"string status\n"
"\n"
"string mission_name\n"
"\n"
;
  }

  static const char* value(const ::rtcrobot_actions::MissionFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.mission_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MissionFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rtcrobot_actions::MissionFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rtcrobot_actions::MissionFeedback_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
    s << indent << "mission_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.mission_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RTCROBOT_ACTIONS_MESSAGE_MISSIONFEEDBACK_H
