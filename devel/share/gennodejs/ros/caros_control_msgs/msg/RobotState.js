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

class RobotState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.q = null;
      this.dq = null;
      this.is_moving = null;
      this.is_colliding = null;
      this.e_stopped = null;
      this.s_stopped = null;
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
      if (initObj.hasOwnProperty('is_moving')) {
        this.is_moving = initObj.is_moving
      }
      else {
        this.is_moving = false;
      }
      if (initObj.hasOwnProperty('is_colliding')) {
        this.is_colliding = initObj.is_colliding
      }
      else {
        this.is_colliding = false;
      }
      if (initObj.hasOwnProperty('e_stopped')) {
        this.e_stopped = initObj.e_stopped
      }
      else {
        this.e_stopped = false;
      }
      if (initObj.hasOwnProperty('s_stopped')) {
        this.s_stopped = initObj.s_stopped
      }
      else {
        this.s_stopped = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [q]
    bufferOffset = caros_common_msgs.msg.Q.serialize(obj.q, buffer, bufferOffset);
    // Serialize message field [dq]
    bufferOffset = caros_common_msgs.msg.Q.serialize(obj.dq, buffer, bufferOffset);
    // Serialize message field [is_moving]
    bufferOffset = _serializer.bool(obj.is_moving, buffer, bufferOffset);
    // Serialize message field [is_colliding]
    bufferOffset = _serializer.bool(obj.is_colliding, buffer, bufferOffset);
    // Serialize message field [e_stopped]
    bufferOffset = _serializer.bool(obj.e_stopped, buffer, bufferOffset);
    // Serialize message field [s_stopped]
    bufferOffset = _serializer.bool(obj.s_stopped, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotState
    let len;
    let data = new RobotState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [q]
    data.q = caros_common_msgs.msg.Q.deserialize(buffer, bufferOffset);
    // Deserialize message field [dq]
    data.dq = caros_common_msgs.msg.Q.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_moving]
    data.is_moving = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_colliding]
    data.is_colliding = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [e_stopped]
    data.e_stopped = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [s_stopped]
    data.s_stopped = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += caros_common_msgs.msg.Q.getMessageSize(object.q);
    length += caros_common_msgs.msg.Q.getMessageSize(object.dq);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'caros_control_msgs/RobotState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3df80523bcb99d54ccf86ae91d0d78ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #RobotState represents the state of one a single robot in the setup.
    
    #Header containing information about time and frameid
    Header header
    
    #Joint configuration.
    # Angles should be represented as radians and distances in meters.
    caros_common_msgs/Q q
    
    #Velocities should be represented as radians per sec
    caros_common_msgs/Q dq
    
    #Is the robot moving
    bool is_moving
    
    #Is the robot in collision
    bool is_colliding
    
    #Is Emergency Stopped
    bool e_stopped
    
    #Is Security Stopped
    bool s_stopped
    
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
    const resolved = new RobotState(null);
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

    if (msg.is_moving !== undefined) {
      resolved.is_moving = msg.is_moving;
    }
    else {
      resolved.is_moving = false
    }

    if (msg.is_colliding !== undefined) {
      resolved.is_colliding = msg.is_colliding;
    }
    else {
      resolved.is_colliding = false
    }

    if (msg.e_stopped !== undefined) {
      resolved.e_stopped = msg.e_stopped;
    }
    else {
      resolved.e_stopped = false
    }

    if (msg.s_stopped !== undefined) {
      resolved.s_stopped = msg.s_stopped;
    }
    else {
      resolved.s_stopped = false
    }

    return resolved;
    }
};

module.exports = RobotState;
