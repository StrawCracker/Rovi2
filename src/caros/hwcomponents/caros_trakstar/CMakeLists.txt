cmake_minimum_required(VERSION 2.8.3)
project(caros_trakstar)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules/")

########################################################################
#### Local Variables
########################################################################
set(node_name "${PROJECT_NAME}_node")
set(library_name "${PROJECT_NAME}_lib")
set(SHOULD_BUILD_CAROS_TRAKSTAR 1)

########################################################################
#### Catkin Packages
########################################################################
find_package(
  catkin REQUIRED COMPONENTS
  caros_common
  caros_sensor
  nodelet
  rosconsole
  roscpp
  roslint
  )

########################################################################
#### Roslint
########################################################################
set(ROSLINT_CPP_OPTS "--filter=-legal/copyright,-build/include")
roslint_cpp()

########################################################################
#### TRAKSTAR
########################################################################
find_package(TrakSTAR)

if(TrakSTAR_FOUND)
  include_directories(${TrakSTAR_INCLUDE_DIRS})
  add_definitions(${TrakSTAR_DEFINITIONS})
else()
  message(WARNING "Requires the 3D Guidance TrakSTAR library to be installed. "
                  "Make sure that the library name is prefixed "
                  "with 'lib' on *nix platforms.")
  set(SHOULD_BUILD_CAROS_TRAKSTAR 0)
endif()

########################################################################
#### Build process
########################################################################
if(SHOULD_BUILD_CAROS_TRAKSTAR)
  ################################################
  ## Declare ROS messages, services and actions ##
  ################################################
  #add_service_files(
  #  FILES
  #)

  #generate_messages(
  #  DEPENDENCIES
  #  std_msgs
  #  caros_common
  #)

  ###################################
  ## catkin specific configuration ##
  ###################################
  catkin_package(
    INCLUDE_DIRS include
    LIBRARIES ${library_name}
    CATKIN_DEPENDS caros_common caros_sensor message_runtime nodelet roscpp
    )

  ########################################################################
  #### Build
  ########################################################################
  include_directories(
    include
    ${catkin_INCLUDE_DIRS}
    )

  add_library(${library_name}
    src/trakstar.cpp
    src/trakstar_node.cpp
    )

  add_executable(${node_name} src/main.cpp)
  target_link_libraries(${node_name} ${library_name} ${TrakSTAR_LIBRARIES} ${catkin_LIBRARIES})

  ########################################################################
  #### Testing
  ########################################################################

else()
  message(WARNING "Skipping ${PROJECT_NAME} due to missing libraries - see earlier warnings.")
endif()
