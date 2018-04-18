# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cameranode: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icameranode:/home/resps/rovi2/Rovi2/src/cameranode/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cameranode_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/cameranode/msg/Point.msg" NAME_WE)
add_custom_target(_cameranode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cameranode" "/home/resps/rovi2/Rovi2/src/cameranode/msg/Point.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cameranode
  "/home/resps/rovi2/Rovi2/src/cameranode/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cameranode
)

### Generating Services

### Generating Module File
_generate_module_cpp(cameranode
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cameranode
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cameranode_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cameranode_generate_messages cameranode_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/cameranode/msg/Point.msg" NAME_WE)
add_dependencies(cameranode_generate_messages_cpp _cameranode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cameranode_gencpp)
add_dependencies(cameranode_gencpp cameranode_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cameranode_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cameranode
  "/home/resps/rovi2/Rovi2/src/cameranode/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cameranode
)

### Generating Services

### Generating Module File
_generate_module_eus(cameranode
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cameranode
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cameranode_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cameranode_generate_messages cameranode_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/cameranode/msg/Point.msg" NAME_WE)
add_dependencies(cameranode_generate_messages_eus _cameranode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cameranode_geneus)
add_dependencies(cameranode_geneus cameranode_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cameranode_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cameranode
  "/home/resps/rovi2/Rovi2/src/cameranode/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cameranode
)

### Generating Services

### Generating Module File
_generate_module_lisp(cameranode
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cameranode
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cameranode_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cameranode_generate_messages cameranode_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/cameranode/msg/Point.msg" NAME_WE)
add_dependencies(cameranode_generate_messages_lisp _cameranode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cameranode_genlisp)
add_dependencies(cameranode_genlisp cameranode_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cameranode_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cameranode
  "/home/resps/rovi2/Rovi2/src/cameranode/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cameranode
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cameranode
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cameranode
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cameranode_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cameranode_generate_messages cameranode_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/cameranode/msg/Point.msg" NAME_WE)
add_dependencies(cameranode_generate_messages_nodejs _cameranode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cameranode_gennodejs)
add_dependencies(cameranode_gennodejs cameranode_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cameranode_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cameranode
  "/home/resps/rovi2/Rovi2/src/cameranode/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cameranode
)

### Generating Services

### Generating Module File
_generate_module_py(cameranode
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cameranode
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cameranode_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cameranode_generate_messages cameranode_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/resps/rovi2/Rovi2/src/cameranode/msg/Point.msg" NAME_WE)
add_dependencies(cameranode_generate_messages_py _cameranode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cameranode_genpy)
add_dependencies(cameranode_genpy cameranode_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cameranode_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cameranode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cameranode
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cameranode_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cameranode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cameranode
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cameranode_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cameranode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cameranode
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cameranode_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cameranode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cameranode
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cameranode_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cameranode)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cameranode\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cameranode
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cameranode_generate_messages_py std_msgs_generate_messages_py)
endif()
