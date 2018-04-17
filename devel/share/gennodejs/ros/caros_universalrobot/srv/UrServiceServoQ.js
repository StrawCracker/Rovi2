// Auto-generated. Do not edit!

// (in-package caros_universalrobot.srv)


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

class UrServiceServoQRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target = null;
    }
    else {
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = new caros_common_msgs.msg.Q();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UrServiceServoQRequest
    // Serialize message field [target]
    bufferOffset = caros_common_msgs.msg.Q.serialize(obj.target, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UrServiceServoQRequest
    let len;
    let data = new UrServiceServoQRequest(null);
    // Deserialize message field [target]
    data.target = caros_common_msgs.msg.Q.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += caros_common_msgs.msg.Q.getMessageSize(object.target);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_universalrobot/UrServiceServoQRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fee4539b1a475fe2318780ffcddb855';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    caros_common_msgs/Q target
    
    
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
    const resolved = new UrServiceServoQRequest(null);
    if (msg.target !== undefined) {
      resolved.target = caros_common_msgs.msg.Q.Resolve(msg.target)
    }
    else {
      resolved.target = new caros_common_msgs.msg.Q()
    }

    return resolved;
    }
};

class UrServiceServoQResponse {
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
    // Serializes a message object of type UrServiceServoQResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UrServiceServoQResponse
    let len;
    let data = new UrServiceServoQResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_universalrobot/UrServiceServoQResponse';
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
    const resolved = new UrServiceServoQResponse(null);
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
  Request: UrServiceServoQRequest,
  Response: UrServiceServoQResponse,
  md5sum() { return 'a0ad63434e4812ee019f31d434b9f910'; },
  datatype() { return 'caros_universalrobot/UrServiceServoQ'; }
};
