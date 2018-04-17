# Install script for directory: /home/resps/rovi2/Rovi2/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/resps/rovi2/Rovi2/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/resps/rovi2/Rovi2/install" TYPE PROGRAM FILES "/home/resps/rovi2/Rovi2/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/resps/rovi2/Rovi2/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/resps/rovi2/Rovi2/install" TYPE PROGRAM FILES "/home/resps/rovi2/Rovi2/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/resps/rovi2/Rovi2/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/resps/rovi2/Rovi2/install" TYPE FILE FILES "/home/resps/rovi2/Rovi2/build/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/resps/rovi2/Rovi2/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/resps/rovi2/Rovi2/install" TYPE FILE FILES "/home/resps/rovi2/Rovi2/build/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/resps/rovi2/Rovi2/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/resps/rovi2/Rovi2/install" TYPE FILE FILES "/home/resps/rovi2/Rovi2/build/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/resps/rovi2/Rovi2/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/resps/rovi2/Rovi2/install" TYPE FILE FILES "/home/resps/rovi2/Rovi2/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/resps/rovi2/Rovi2/build/gtest/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/core/caros_common_msgs/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/core/caros_common_robwork_msgs/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/interfaces/caros_control_msgs/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/interfaces/caros_sensor_msgs/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/core/caros_common/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/core/caros_common_robwork/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/robot_plugin/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/interfaces/caros_control/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/hwcomponents/caros_robotiq/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/hwcomponents/caros_schunkpg70/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/hwcomponents/caros_sdh/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/hwcomponents/caros_universalrobot/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/interfaces/caros_sensor/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/hwcomponents/caros_leapmotion/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/hwcomponents/caros_netft/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/components/caros_teleoperation/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/hwcomponents/caros_trakstar/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/cameranode/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/collision/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/mainlogic/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/rrt/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/caros/hwcomponents/caros_camera/cmake_install.cmake")
  include("/home/resps/rovi2/Rovi2/build/ur_caros_example/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/resps/rovi2/Rovi2/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
