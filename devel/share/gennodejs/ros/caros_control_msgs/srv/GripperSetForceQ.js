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

class GripperSetForceQRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.force = null;
    }
    else {
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = new caros_common_msgs.msg.Q();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperSetForceQRequest
    // Serialize message field [force]
    bufferOffset = caros_common_msgs.msg.Q.serialize(obj.force, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperSetForceQRequest
    let len;
    let data = new GripperSetForceQRequest(null);
    // Deserialize message field [force]
    data.force = caros_common_msgs.msg.Q.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += caros_common_msgs.msg.Q.getMessageSize(object.force);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/GripperSetForceQRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c64f1c44f96a40c777eb2d596b80603b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    caros_common_msgs/Q force
    
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
    const resolved = new GripperSetForceQRequest(null);
    if (msg.force !== undefined) {
      resolved.force = caros_common_msgs.msg.Q.Resolve(msg.force)
    }
    else {
      resolved.force = new caros_common_msgs.msg.Q()
    }

    return resolved;
    }
};

class GripperSetForceQResponse {
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
    // Serializes a message object of type GripperSetForceQResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperSetForceQResponse
    let len;
    let data = new GripperSetForceQResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/GripperSetForceQResponse';
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
    const resolved = new GripperSetForceQResponse(null);
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
  Request: GripperSetForceQRequest,
  Response: GripperSetForceQResponse,
  md5sum() { return 'feae1a2d3a448335d59915dd351d018c'; },
  datatype() { return 'caros_control_msgs/GripperSetForceQ'; }
};
