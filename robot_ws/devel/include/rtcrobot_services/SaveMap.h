// Generated by gencpp from file rtcrobot_services/SaveMap.msg
// DO NOT EDIT!


#ifndef RTCROBOT_SERVICES_MESSAGE_SAVEMAP_H
#define RTCROBOT_SERVICES_MESSAGE_SAVEMAP_H

#include <ros/service_traits.h>


#include <rtcrobot_services/SaveMapRequest.h>
#include <rtcrobot_services/SaveMapResponse.h>


namespace rtcrobot_services
{

struct SaveMap
{

typedef SaveMapRequest Request;
typedef SaveMapResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SaveMap
} // namespace rtcrobot_services


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rtcrobot_services::SaveMap > {
  static const char* value()
  {
    return "5a319d5d0d68cf65447a451755dbc01b";
  }

  static const char* value(const ::rtcrobot_services::SaveMap&) { return value(); }
};

template<>
struct DataType< ::rtcrobot_services::SaveMap > {
  static const char* value()
  {
    return "rtcrobot_services/SaveMap";
  }

  static const char* value(const ::rtcrobot_services::SaveMap&) { return value(); }
};


// service_traits::MD5Sum< ::rtcrobot_services::SaveMapRequest> should match
// service_traits::MD5Sum< ::rtcrobot_services::SaveMap >
template<>
struct MD5Sum< ::rtcrobot_services::SaveMapRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rtcrobot_services::SaveMap >::value();
  }
  static const char* value(const ::rtcrobot_services::SaveMapRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rtcrobot_services::SaveMapRequest> should match
// service_traits::DataType< ::rtcrobot_services::SaveMap >
template<>
struct DataType< ::rtcrobot_services::SaveMapRequest>
{
  static const char* value()
  {
    return DataType< ::rtcrobot_services::SaveMap >::value();
  }
  static const char* value(const ::rtcrobot_services::SaveMapRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rtcrobot_services::SaveMapResponse> should match
// service_traits::MD5Sum< ::rtcrobot_services::SaveMap >
template<>
struct MD5Sum< ::rtcrobot_services::SaveMapResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rtcrobot_services::SaveMap >::value();
  }
  static const char* value(const ::rtcrobot_services::SaveMapResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rtcrobot_services::SaveMapResponse> should match
// service_traits::DataType< ::rtcrobot_services::SaveMap >
template<>
struct DataType< ::rtcrobot_services::SaveMapResponse>
{
  static const char* value()
  {
    return DataType< ::rtcrobot_services::SaveMap >::value();
  }
  static const char* value(const ::rtcrobot_services::SaveMapResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RTCROBOT_SERVICES_MESSAGE_SAVEMAP_H
