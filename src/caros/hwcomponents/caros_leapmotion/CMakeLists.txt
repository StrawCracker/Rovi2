#catkin_lint: ignore uninstalled_script link_directory
cmake_minimum_required(VERSION 2.8.12)
project(caros_leapmotion)

option(${PROJECT_NAME}_BUILD_TESTS "Build tests" ON)

if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/src/leap/version.txt")
    set(node_name "${PROJECT_NAME}_node")
    ########################################################################
    #### Make use of c++11
    ########################################################################
    include("cmake/use-c++11.cmake")
    
    if(${PROJECT_NAME}_BUILD_TESTS)
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wno-unused-variable -Wno-old-style-cast -Wcast-align -Woverloaded-virtual -g -fopenmp -openmp -std=c++1y")
    endif()

    ########################################################################
    #### Catkin Packages
    ########################################################################
    find_package(catkin REQUIRED COMPONENTS
        caros_common
        caros_common_msgs
	    caros_sensor
        caros_sensor_msgs
	    geometry_msgs
	    message_runtime
 	    roscpp
        roslint
        sensor_msgs
        std_msgs        
    )

    ########################################################################
    #### Roslint
    ########################################################################
    set(ROSLINT_CPP_OPTS "--filter=-legal/copyright,-runtime/references")
    roslint_cpp()
    
    ###################################
    ## catkin specific configuration ##
    ###################################
    catkin_package(
	    INCLUDE_DIRS include
        LIBRARIES ${PROJECT_NAME}
        CATKIN_DEPENDS  
        caros_common
        caros_common_msgs
        caros_sensor
        caros_sensor_msgs
	    geometry_msgs
        message_runtime
        roscpp
        roslint
        sensor_msgs
        std_msgs        
        CFG_EXTRAS "use-c++11.cmake"
    )

    include_directories(SYSTEM ${catkin_INCLUDE_DIRS})
    
    # Use Leap Motion
    cmake_policy(SET CMP0015 NEW)
    set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)
    #include_directories(SYSTEM src/leap/include/)
    link_directories(src/leap/lib/x64/)
    
    include_directories(src)
    set(SRC_FILES
       ${SRC_FILES}
            src/leap_motion_node.cpp
            src/leap_sensor.cpp
            src/main.cpp)
    include_directories(${PROJECT_BINARY_DIR})
    
    set(CMAKE_INCLUDE_CURRENT_DIR ON)
    include_directories(${CMAKE_CURRENT_BINARY_DIR})
    
    add_library (${PROJECT_NAME} SHARED 
        ${SRC_FILES}
    )
    target_link_libraries(${PROJECT_NAME} ${catkin_LIBRARIES} Leap)
    include_directories(include )
    add_executable(${node_name} ${SRC_FILES})
    target_link_libraries(${node_name} ${PROJECT_NAME})
    add_dependencies(${node_name} ${PROJECT_NAME})
    
    message("-- Successully built project --")
else()
    message(WARNING "caros_leapmotion NOT installed\n"
                    "Install Leap Motion SDK\n"
                    "https://developer.leapmotion.com/sdk/v2\n"
                    "put the leap dir in src\n"
    )
endif()
