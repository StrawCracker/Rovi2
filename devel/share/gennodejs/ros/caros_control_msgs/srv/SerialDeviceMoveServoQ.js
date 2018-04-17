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

class SerialDeviceMoveServoQRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.targets = null;
      this.speeds = null;
    }
    else {
      if (initObj.hasOwnProperty('targets')) {
        this.targets = initObj.targets
      }
      else {
        this.targets = [];
      }
      if (initObj.hasOwnProperty('speeds')) {
        this.speeds = initObj.speeds
      }
      else {
        this.speeds = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SerialDeviceMoveServoQRequest
    // Serialize message field [targets]
    // Serialize the length for message field [targets]
    bufferOffset = _serializer.uint32(obj.targets.length, buffer, bufferOffset);
    obj.targets.forEach((val) => {
      bufferOffset = caros_common_msgs.msg.Q.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [speeds]
    bufferOffset = _arraySerializer.float32(obj.speeds, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SerialDeviceMoveServoQRequest
    let len;
    let data = new SerialDeviceMoveServoQRequest(null);
    // Deserialize message field [targets]
    // Deserialize array length for message field [targets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.targets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.targets[i] = caros_common_msgs.msg.Q.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [speeds]
    data.speeds = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.targets.forEach((val) => {
      length += caros_common_msgs.msg.Q.getMessageSize(val);
    });
    length += 4 * object.speeds.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/SerialDeviceMoveServoQRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9064e7ed416d09a44628778cf5a3df17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    caros_common_msgs/Q[] targets
    
    
    float32[] speeds
    
    
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
    const resolved = new SerialDeviceMoveServoQRequest(null);
    if (msg.targets !== undefined) {
      resolved.targets = new Array(msg.targets.length);
      for (let i = 0; i < resolved.targets.length; ++i) {
        resolved.targets[i] = caros_common_msgs.msg.Q.Resolve(msg.targets[i]);
      }
    }
    else {
      resolved.targets = []
    }

    if (msg.speeds !== undefined) {
      resolved.speeds = msg.speeds;
    }
    else {
      resolved.speeds = []
    }

    return resolved;
    }
};

class SerialDeviceMoveServoQResponse {
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
    // Serializes a message object of type SerialDeviceMoveServoQResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SerialDeviceMoveServoQResponse
    let len;
    let data = new SerialDeviceMoveServoQResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/SerialDeviceMoveServoQResponse';
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
    const resolved = new SerialDeviceMoveServoQResponse(null);
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
  Request: SerialDeviceMoveServoQRequest,
  Response: SerialDeviceMoveServoQResponse,
  md5sum() { return '8289fdc0949acdbc17fb0989cb66f411'; },
  datatype() { return 'caros_control_msgs/SerialDeviceMoveServoQ'; }
};
