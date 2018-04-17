// Auto-generated. Do not edit!

// (in-package caros_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let caros_common_msgs = _finder('caros_common_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GripperSetVelocityQRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new caros_common_msgs.msg.Q();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperSetVelocityQRequest
    // Serialize message field [velocity]
    bufferOffset = caros_common_msgs.msg.Q.serialize(obj.velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperSetVelocityQRequest
    let len;
    let data = new GripperSetVelocityQRequest(null);
    // Deserialize message field [velocity]
    data.velocity = caros_common_msgs.msg.Q.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += caros_common_msgs.msg.Q.getMessageSize(object.velocity);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/GripperSetVelocityQRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aea9685e03a6b138904b1f97a15a09ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    caros_common_msgs/Q velocity
    
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
    const resolved = new GripperSetVelocityQRequest(null);
    if (msg.velocity !== undefined) {
      resolved.velocity = caros_common_msgs.msg.Q.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new caros_common_msgs.msg.Q()
    }

    return resolved;
    }
};

class GripperSetVelocityQResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperSetVelocityQResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperSetVelocityQResponse
    let len;
    let data = new GripperSetVelocityQResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/GripperSetVelocityQResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripperSetVelocityQResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GripperSetVelocityQRequest,
  Response: GripperSetVelocityQResponse,
  md5sum() { return '6364873f803d54771b419bcf1075611d'; },
  datatype() { return 'caros_control_msgs/GripperSetVelocityQ'; }
};
