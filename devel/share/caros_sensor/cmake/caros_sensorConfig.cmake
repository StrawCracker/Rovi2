# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(caros_sensor_CONFIG_INCLUDED)
  return()
endif()
set(caros_sensor_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(caros_sensor_SOURCE_PREFIX /home/resps/rovi2/Rovi2/src/caros/interfaces/caros_sensor)
  set(caros_sensor_DEVEL_PREFIX /home/resps/rovi2/Rovi2/devel)
  set(caros_sensor_INSTALL_PREFIX "")
  set(caros_sensor_PREFIX ${caros_sensor_DEVEL_PREFIX})
else()
  set(caros_sensor_SOURCE_PREFIX "")
  set(caros_sensor_DEVEL_PREFIX "")
  set(caros_sensor_INSTALL_PREFIX /home/resps/rovi2/Rovi2/install)
  set(caros_sensor_PREFIX ${caros_sensor_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'caros_sensor' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(caros_sensor_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/resps/rovi2/Rovi2/src/caros/interfaces/caros_sensor/include;/home/jacob/Desktop/RobWork/RobWork/cmake/../ext/boostbindings;/usr/include/eigen3;/home/jacob/Desktop/RobWork/RobWork/cmake/../src/;/usr/include;/home/jacob/Desktop/RobWork/RobWork/cmake/../ext/rwyaobi;/home/jacob/Desktop/RobWork/RobWork/cmake/../ext/rwpqp;/usr/include/lua5.2;/home/jacob/Desktop/RobWork/RobWork/cmake/../ext/qhull/src;/home/jacob/Desktop/RobWork/RobWork/cmake/../ext/csgjs/src;/usr/include/assimp " STREQUAL " ")
  set(caros_sensor_INCLUDE_DIRS "")
  set(_include_dirs "/home/resps/rovi2/Rovi2/src/caros/interfaces/caros_sensor/include;/home/jacob/Desktop/RobWork/RobWork/cmake/../ext/boostbindings;/usr/include/eigen3;/home/jacob/Desktop/RobWork/RobWork/cmake/../src/;/usr/include;/home/jacob/Desktop/RobWork/RobWork/cmake/../ext/rwyaobi;/home/jacob/Desktop/RobWork/RobWork/cmake/../ext/rwpqp;/usr/include/lua5.2;/home/jacob/Desktop/RobWork/RobWork/cmake/../ext/qhull/src;/home/jacob/Desktop/RobWork/RobWork/cmake/../ext/csgjs/src;/usr/include/assimp")
  if(NOT "https://gitlab.com/caro-sdu/caros/issues " STREQUAL " ")
    set(_report "Check the issue tracker 'https://gitlab.com/caro-sdu/caros/issues' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "https://gitlab.com/caro-sdu/caros/wikis/home " STREQUAL " ")
    set(_report "Check the website 'https://gitlab.com/caro-sdu/caros/wikis/home' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'mband <mband@mmmi.sdu.dk>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${caros_sensor_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'caros_sensor' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'caros_sensor' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/resps/rovi2/Rovi2/src/caros/interfaces/caros_sensor/${idir}'.  ${_report}")
    endif()
    _list_append_unique(caros_sensor_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "caros_sensor;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_lua_s.a;/usr/lib/x86_64-linux-gnu/liblua5.2.so;/usr/lib/x86_64-linux-gnu/libm.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_algorithms.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_pathplanners.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_pathoptimization.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_simulation.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_opengl.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_assembly.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_task.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_calibration.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_csg.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_control.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_proximitystrategies.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/libyaobi.a;/home/jacob/Desktop/RobWork/RobWork/libs/release/libpqp.a;/home/jacob/Desktop/RobWork/RobWork/libs/release/libfcl.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw.so;/usr/lib/x86_64-linux-gnu/libGLU.so;/usr/lib/x86_64-linux-gnu/libGL.so;/usr/lib/x86_64-linux-gnu/libxerces-c.so;/usr/lib/x86_64-linux-gnu/libassimp.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_regex.so;/usr/lib/x86_64-linux-gnu/libboost_serialization.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libpthread.so;/usr/lib/x86_64-linux-gnu/libboost_test_exec_monitor.a;/usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_qhull.a;/home/jacob/Desktop/RobWork/RobWork/libs/release/librw_csgjs.a;/usr/lib/x86_64-linux-gnu/libdl.so")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND caros_sensor_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND caros_sensor_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND caros_sensor_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/resps/rovi2/Rovi2/devel/lib;/opt/ros/kinetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(caros_sensor_LIBRARY_DIRS ${lib_path})
      list(APPEND caros_sensor_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'caros_sensor'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND caros_sensor_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(caros_sensor_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${caros_sensor_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "caros_common;caros_common_msgs;caros_common_robwork;caros_sensor_msgs;cv_bridge;geometry_msgs;image_geometry;image_transport;message_runtime;sensor_msgs;std_msgs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 caros_sensor_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${caros_sensor_dep}_FOUND)
      find_package(${caros_sensor_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${caros_sensor_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(caros_sensor_INCLUDE_DIRS ${${caros_sensor_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(caros_sensor_LIBRARIES ${caros_sensor_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${caros_sensor_dep}_LIBRARIES})
  _list_append_deduplicate(caros_sensor_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(caros_sensor_LIBRARIES ${caros_sensor_LIBRARIES})

  _list_append_unique(caros_sensor_LIBRARY_DIRS ${${caros_sensor_dep}_LIBRARY_DIRS})
  list(APPEND caros_sensor_EXPORTED_TARGETS ${${caros_sensor_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${caros_sensor_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
