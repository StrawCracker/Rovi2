# Install script for directory: /home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/resps/rovi2/Rovi2/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/caros_universalrobot/srv" TYPE FILE FILES
    "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceEmpty.srv"
    "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStart.srv"
    "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStop.srv"
    "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeUpdate.srv"
    "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServicePayload.srv"
    "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoQ.srv"
    "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoT.srv"
    "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceSetIO.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/caros_universalrobot/cmake" TYPE FILE FILES "/home/resps/rovi2/Rovi2/build/caros/hwcomponents/caros_universalrobot/catkin_generated/installspace/caros_universalrobot-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/resps/rovi2/Rovi2/devel/include/caros_universalrobot")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/resps/rovi2/Rovi2/devel/share/roseus/ros/caros_universalrobot")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/resps/rovi2/Rovi2/devel/share/common-lisp/ros/caros_universalrobot")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/resps/rovi2/Rovi2/devel/share/gennodejs/ros/caros_universalrobot")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/resps/rovi2/Rovi2/devel/lib/python2.7/dist-packages/caros_universalrobot")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/resps/rovi2/Rovi2/devel/lib/python2.7/dist-packages/caros_universalrobot")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/resps/rovi2/Rovi2/build/caros/hwcomponents/caros_universalrobot/catkin_generated/installspace/caros_universalrobot.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/caros_universalrobot/cmake" TYPE FILE FILES
    "/home/resps/rovi2/Rovi2/build/caros/hwcomponents/caros_universalrobot/catkin_generated/installspace/caros_universalrobot-msg-extras.cmake"
    "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/cmake/use-c++11.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/caros_universalrobot/cmake" TYPE FILE FILES
    "/home/resps/rovi2/Rovi2/build/caros/hwcomponents/caros_universalrobot/catkin_generated/installspace/caros_universalrobotConfig.cmake"
    "/home/resps/rovi2/Rovi2/build/caros/hwcomponents/caros_universalrobot/catkin_generated/installspace/caros_universalrobotConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/caros_universalrobot" TYPE FILE FILES "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/package.xml")
endif()

