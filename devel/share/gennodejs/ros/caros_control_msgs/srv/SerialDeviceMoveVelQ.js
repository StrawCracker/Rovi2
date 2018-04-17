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

class SerialDeviceMoveVelQRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel = null;
    }
    else {
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new caros_common_msgs.msg.Q();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SerialDeviceMoveVelQRequest
    // Serialize message field [vel]
    bufferOffset = caros_common_msgs.msg.Q.serialize(obj.vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SerialDeviceMoveVelQRequest
    let len;
    let data = new SerialDeviceMoveVelQRequest(null);
    // Deserialize message field [vel]
    data.vel = caros_common_msgs.msg.Q.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += caros_common_msgs.msg.Q.getMessageSize(object.vel);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/SerialDeviceMoveVelQRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2e7676c5bcd7a591b5fff1693ec82a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    caros_common_msgs/Q vel
    
    
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
    const resolved = new SerialDeviceMoveVelQRequest(null);
    if (msg.vel !== undefined) {
      resolved.vel = caros_common_msgs.msg.Q.Resolve(msg.vel)
    }
    else {
      resolved.vel = new caros_common_msgs.msg.Q()
    }

    return resolved;
    }
};

class SerialDeviceMoveVelQResponse {
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
    // Serializes a message object of type SerialDeviceMoveVelQResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SerialDeviceMoveVelQResponse
    let len;
    let data = new SerialDeviceMoveVelQResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/SerialDeviceMoveVelQResponse';
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
    const resolved = new SerialDeviceMoveVelQResponse(null);
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
  Request: SerialDeviceMoveVelQRequest,
  Response: SerialDeviceMoveVelQResponse,
  md5sum() { return 'e405cc67ad2f49de8c759f388d4bac88'; },
  datatype() { return 'caros_control_msgs/SerialDeviceMoveVelQ'; }
};
