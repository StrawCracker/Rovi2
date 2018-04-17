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

class GripperGripQRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.q = null;
    }
    else {
      if (initObj.hasOwnProperty('q')) {
        this.q = initObj.q
      }
      else {
        this.q = new caros_common_msgs.msg.Q();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperGripQRequest
    // Serialize message field [q]
    bufferOffset = caros_common_msgs.msg.Q.serialize(obj.q, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperGripQRequest
    let len;
    let data = new GripperGripQRequest(null);
    // Deserialize message field [q]
    data.q = caros_common_msgs.msg.Q.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += caros_common_msgs.msg.Q.getMessageSize(object.q);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/GripperGripQRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9291f556139bcd303c4d89dd0d338e1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    caros_common_msgs/Q q
    
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
    const resolved = new GripperGripQRequest(null);
    if (msg.q !== undefined) {
      resolved.q = caros_common_msgs.msg.Q.Resolve(msg.q)
    }
    else {
      resolved.q = new caros_common_msgs.msg.Q()
    }

    return resolved;
    }
};

class GripperGripQResponse {
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
    // Serializes a message object of type GripperGripQResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperGripQResponse
    let len;
    let data = new GripperGripQResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/GripperGripQResponse';
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
    const resolved = new GripperGripQResponse(null);
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
  Request: GripperGripQRequest,
  Response: GripperGripQResponse,
  md5sum() { return 'd23b32153f93e9b4d774b55a7d161889'; },
  datatype() { return 'caros_control_msgs/GripperGripQ'; }
};
