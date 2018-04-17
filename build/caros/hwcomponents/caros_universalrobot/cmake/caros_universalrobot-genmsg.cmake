# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "caros_universalrobot: 0 messages, 8 services")

set(MSG_I_FLAGS "-Icaros_common_msgs:/home/resps/rovi2/Rovi2/src/caros/core/caros_common_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(caros_universalrobot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStart.srv" NAME_WE)
add_custom_target(_caros_universalrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "caros_universalrobot" "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStart.srv" "geometry_msgs/Quaternion:geometry_msgs/Wrench:geometry_msgs/Transform:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStop.srv" NAME_WE)
add_custom_target(_caros_universalrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "caros_universalrobot" "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStop.srv" ""
)

get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceSetIO.srv" NAME_WE)
add_custom_target(_caros_universalrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "caros_universalrobot" "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceSetIO.srv" ""
)

get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServicePayload.srv" NAME_WE)
add_custom_target(_caros_universalrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "caros_universalrobot" "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServicePayload.srv" ""
)

get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoQ.srv" NAME_WE)
add_custom_target(_caros_universalrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "caros_universalrobot" "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoQ.srv" "caros_common_msgs/Q"
)

get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoT.srv" NAME_WE)
add_custom_target(_caros_universalrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "caros_universalrobot" "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoT.srv" "geometry_msgs/Quaternion:geometry_msgs/Transform:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceEmpty.srv" NAME_WE)
add_custom_target(_caros_universalrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "caros_universalrobot" "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceEmpty.srv" ""
)

get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeUpdate.srv" NAME_WE)
add_custom_target(_caros_universalrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "caros_universalrobot" "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeUpdate.srv" "geometry_msgs/Vector3:geometry_msgs/Wrench"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_cpp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_cpp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServicePayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_cpp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoQ.srv"
  "${MSG_I_FLAGS}"
  "/home/resps/rovi2/Rovi2/src/caros/core/caros_common_msgs/msg/Q.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_cpp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceSetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_cpp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoT.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_cpp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceEmpty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_cpp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeUpdate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/caros_universalrobot
)

### Generating Module File
_generate_module_cpp(caros_universalrobot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/caros_universalrobot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(caros_universalrobot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(caros_universalrobot_generate_messages caros_universalrobot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStart.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_cpp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStop.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_cpp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceSetIO.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_cpp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServicePayload.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_cpp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoQ.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_cpp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoT.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_cpp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceEmpty.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_cpp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeUpdate.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_cpp _caros_universalrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(caros_universalrobot_gencpp)
add_dependencies(caros_universalrobot_gencpp caros_universalrobot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS caros_universalrobot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_eus(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_eus(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServicePayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_eus(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoQ.srv"
  "${MSG_I_FLAGS}"
  "/home/resps/rovi2/Rovi2/src/caros/core/caros_common_msgs/msg/Q.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_eus(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceSetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_eus(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoT.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_eus(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceEmpty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_eus(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeUpdate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/caros_universalrobot
)

### Generating Module File
_generate_module_eus(caros_universalrobot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/caros_universalrobot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(caros_universalrobot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(caros_universalrobot_generate_messages caros_universalrobot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStart.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_eus _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStop.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_eus _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceSetIO.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_eus _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServicePayload.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_eus _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoQ.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_eus _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoT.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_eus _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceEmpty.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_eus _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeUpdate.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_eus _caros_universalrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(caros_universalrobot_geneus)
add_dependencies(caros_universalrobot_geneus caros_universalrobot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS caros_universalrobot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_lisp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_lisp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServicePayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_lisp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoQ.srv"
  "${MSG_I_FLAGS}"
  "/home/resps/rovi2/Rovi2/src/caros/core/caros_common_msgs/msg/Q.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_lisp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceSetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_lisp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoT.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_lisp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceEmpty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_lisp(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeUpdate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/caros_universalrobot
)

### Generating Module File
_generate_module_lisp(caros_universalrobot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/caros_universalrobot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(caros_universalrobot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(caros_universalrobot_generate_messages caros_universalrobot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStart.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_lisp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStop.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_lisp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceSetIO.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_lisp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServicePayload.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_lisp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoQ.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_lisp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoT.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_lisp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceEmpty.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_lisp _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeUpdate.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_lisp _caros_universalrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(caros_universalrobot_genlisp)
add_dependencies(caros_universalrobot_genlisp caros_universalrobot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS caros_universalrobot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_nodejs(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_nodejs(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServicePayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_nodejs(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoQ.srv"
  "${MSG_I_FLAGS}"
  "/home/resps/rovi2/Rovi2/src/caros/core/caros_common_msgs/msg/Q.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_nodejs(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceSetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_nodejs(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoT.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_nodejs(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceEmpty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_nodejs(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeUpdate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/caros_universalrobot
)

### Generating Module File
_generate_module_nodejs(caros_universalrobot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/caros_universalrobot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(caros_universalrobot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(caros_universalrobot_generate_messages caros_universalrobot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStart.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_nodejs _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStop.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_nodejs _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceSetIO.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_nodejs _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServicePayload.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_nodejs _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoQ.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_nodejs _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoT.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_nodejs _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceEmpty.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_nodejs _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeUpdate.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_nodejs _caros_universalrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(caros_universalrobot_gennodejs)
add_dependencies(caros_universalrobot_gennodejs caros_universalrobot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS caros_universalrobot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_py(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_py(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServicePayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_py(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoQ.srv"
  "${MSG_I_FLAGS}"
  "/home/resps/rovi2/Rovi2/src/caros/core/caros_common_msgs/msg/Q.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_py(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceSetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_py(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoT.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_py(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceEmpty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/caros_universalrobot
)
_generate_srv_py(caros_universalrobot
  "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeUpdate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/caros_universalrobot
)

### Generating Module File
_generate_module_py(caros_universalrobot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/caros_universalrobot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(caros_universalrobot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(caros_universalrobot_generate_messages caros_universalrobot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStart.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_py _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeStop.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_py _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceSetIO.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_py _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServicePayload.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_py _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoQ.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_py _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceServoT.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_py _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceEmpty.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_py _caros_universalrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_universalrobot/srv/UrServiceForceModeUpdate.srv" NAME_WE)
add_dependencies(caros_universalrobot_generate_messages_py _caros_universalrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(caros_universalrobot_genpy)
add_dependencies(caros_universalrobot_genpy caros_universalrobot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS caros_universalrobot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/caros_universalrobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/caros_universalrobot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET caros_common_msgs_generate_messages_cpp)
  add_dependencies(caros_universalrobot_generate_messages_cpp caros_common_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(caros_universalrobot_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(caros_universalrobot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/caros_universalrobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/caros_universalrobot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET caros_common_msgs_generate_messages_eus)
  add_dependencies(caros_universalrobot_generate_messages_eus caros_common_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(caros_universalrobot_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(caros_universalrobot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/caros_universalrobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/caros_universalrobot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET caros_common_msgs_generate_messages_lisp)
  add_dependencies(caros_universalrobot_generate_messages_lisp caros_common_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(caros_universalrobot_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(caros_universalrobot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/caros_universalrobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/caros_universalrobot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET caros_common_msgs_generate_messages_nodejs)
  add_dependencies(caros_universalrobot_generate_messages_nodejs caros_common_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(caros_universalrobot_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(caros_universalrobot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/caros_universalrobot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/caros_universalrobot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/caros_universalrobot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET caros_common_msgs_generate_messages_py)
  add_dependencies(caros_universalrobot_generate_messages_py caros_common_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(caros_universalrobot_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(caros_universalrobot_generate_messages_py std_msgs_generate_messages_py)
endif()
