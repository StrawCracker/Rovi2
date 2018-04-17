// Auto-generated. Do not edit!

// (in-package caros_universalrobot.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class UrServicePayloadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mass = null;
      this.com = null;
    }
    else {
      if (initObj.hasOwnProperty('mass')) {
        this.mass = initObj.mass
      }
      else {
        this.mass = 0.0;
      }
      if (initObj.hasOwnProperty('com')) {
        this.com = initObj.com
      }
      else {
        this.com = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UrServicePayloadRequest
    // Serialize message field [mass]
    bufferOffset = _serializer.float64(obj.mass, buffer, bufferOffset);
    // Check that the constant length array field [com] has the right length
    if (obj.com.length !== 3) {
      throw new Error('Unable to serialize array field com - length must be 3')
    }
    // Serialize message field [com]
    bufferOffset = _arraySerializer.float64(obj.com, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UrServicePayloadRequest
    let len;
    let data = new UrServicePayloadRequest(null);
    // Deserialize message field [mass]
    data.mass = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [com]
    data.com = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_universalrobot/UrServicePayloadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33a2a64ef7f45c8858c7a4f89a773c36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 mass
    
    
    float64[3] com
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UrServicePayloadRequest(null);
    if (msg.mass !== undefined) {
      resolved.mass = msg.mass;
    }
    else {
      resolved.mass = 0.0
    }

    if (msg.com !== undefined) {
      resolved.com = msg.com;
    }
    else {
      resolved.com = new Array(3).fill(0)
    }

    return resolved;
    }
};

class UrServicePayloadResponse {
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
    // Serializes a message object of type UrServicePayloadResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UrServicePayloadResponse
    let len;
    let data = new UrServicePayloadResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_universalrobot/UrServicePayloadResponse';
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
    const resolved = new UrServicePayloadResponse(null);
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
  Request: UrServicePayloadRequest,
  Response: UrServicePayloadResponse,
  md5sum() { return 'b3bc68f3c25bebd79a698d60907f049f'; },
  datatype() { return 'caros_universalrobot/UrServicePayload'; }
};
