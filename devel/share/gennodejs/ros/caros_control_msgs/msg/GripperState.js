// Auto-generated. Do not edit!

// (in-package caros_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let caros_common_msgs = _finder('caros_common_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GripperState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.q = null;
      this.dq = null;
      this.force = null;
      this.is_moving = null;
      this.is_blocked = null;
      this.is_stopped = null;
      this.e_stopped = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('q')) {
        this.q = initObj.q
      }
      else {
        this.q = new caros_common_msgs.msg.Q();
      }
      if (initObj.hasOwnProperty('dq')) {
        this.dq = initObj.dq
      }
      else {
        this.dq = new caros_common_msgs.msg.Q();
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = new caros_common_msgs.msg.Q();
      }
      if (initObj.hasOwnProperty('is_moving')) {
        this.is_moving = initObj.is_moving
      }
      else {
        this.is_moving = false;
      }
      if (initObj.hasOwnProperty('is_blocked')) {
        this.is_blocked = initObj.is_blocked
      }
      else {
        this.is_blocked = false;
      }
      if (initObj.hasOwnProperty('is_stopped')) {
        this.is_stopped = initObj.is_stopped
      }
      else {
        this.is_stopped = false;
      }
      if (initObj.hasOwnProperty('e_stopped')) {
        this.e_stopped = initObj.e_stopped
      }
      else {
        this.e_stopped = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [q]
    bufferOffset = caros_common_msgs.msg.Q.serialize(obj.q, buffer, bufferOffset);
    // Serialize message field [dq]
    bufferOffset = caros_common_msgs.msg.Q.serialize(obj.dq, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = caros_common_msgs.msg.Q.serialize(obj.force, buffer, bufferOffset);
    // Serialize message field [is_moving]
    bufferOffset = _serializer.bool(obj.is_moving, buffer, bufferOffset);
    // Serialize message field [is_blocked]
    bufferOffset = _serializer.bool(obj.is_blocked, buffer, bufferOffset);
    // Serialize message field [is_stopped]
    bufferOffset = _serializer.bool(obj.is_stopped, buffer, bufferOffset);
    // Serialize message field [e_stopped]
    bufferOffset = _serializer.bool(obj.e_stopped, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperState
    let len;
    let data = new GripperState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [q]
    data.q = caros_common_msgs.msg.Q.deserialize(buffer, bufferOffset);
    // Deserialize message field [dq]
    data.dq = caros_common_msgs.msg.Q.deserialize(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = caros_common_msgs.msg.Q.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_moving]
    data.is_moving = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_blocked]
    data.is_blocked = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_stopped]
    data.is_stopped = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [e_stopped]
    data.e_stopped = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += caros_common_msgs.msg.Q.getMessageSize(object.q);
    length += caros_common_msgs.msg.Q.getMessageSize(object.dq);
    length += caros_common_msgs.msg.Q.getMessageSize(object.force);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'caros_control_msgs/GripperState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25dfabc8c04bee1186049dd520841711';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # GripperState represents the state of a single gripper in the setup.
    
    # Header containing information about time and frameid
    Header header
    
    # Joint configuration.
    # Angles should be represented as radians and distances in meters.
    caros_common_msgs/Q q
    
    # Velocities should be represented as radians per sec
    caros_common_msgs/Q dq
    
    # Approximate force applied by the gripper joints (most implementations simply output the measured current)
    caros_common_msgs/Q force
    
    # Is the gripper trying to move to a target (notice it can still be blocked even if isMoving is true)
    bool is_moving
    
    # If the gripper is moving then it may be blocked.
    bool is_blocked
    
    # If the gripper reached its target then isStopped is true
    bool is_stopped
    
    # Is Emergency Stopped
    bool e_stopped
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: caros_common_msgs/Q
    # A configuration Q
    float64[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripperState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.q !== undefined) {
      resolved.q = caros_common_msgs.msg.Q.Resolve(msg.q)
    }
    else {
      resolved.q = new caros_common_msgs.msg.Q()
    }

    if (msg.dq !== undefined) {
      resolved.dq = caros_common_msgs.msg.Q.Resolve(msg.dq)
    }
    else {
      resolved.dq = new caros_common_msgs.msg.Q()
    }

    if (msg.force !== undefined) {
      resolved.force = caros_common_msgs.msg.Q.Resolve(msg.force)
    }
    else {
      resolved.force = new caros_common_msgs.msg.Q()
    }

    if (msg.is_moving !== undefined) {
      resolved.is_moving = msg.is_moving;
    }
    else {
      resolved.is_moving = false
    }

    if (msg.is_blocked !== undefined) {
      resolved.is_blocked = msg.is_blocked;
    }
    else {
      resolved.is_blocked = false
    }

    if (msg.is_stopped !== undefined) {
      resolved.is_stopped = msg.is_stopped;
    }
    else {
      resolved.is_stopped = false
    }

    if (msg.e_stopped !== undefined) {
      resolved.e_stopped = msg.e_stopped;
    }
    else {
      resolved.e_stopped = false
    }

    return resolved;
    }
};

module.exports = GripperState;
