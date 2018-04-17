// Auto-generated. Do not edit!

// (in-package caros_common_robwork_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let RwState = require('../msg/RwState.js');

//-----------------------------------------------------------

class GetRwStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRwStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRwStateRequest
    let len;
    let data = new GetRwStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_common_robwork_msgs/GetRwStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRwStateRequest(null);
    return resolved;
    }
};

class GetRwStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new RwState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRwStateResponse
    // Serialize message field [state]
    bufferOffset = RwState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRwStateResponse
    let len;
    let data = new GetRwStateResponse(null);
    // Deserialize message field [state]
    data.state = RwState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += RwState.getMessageSize(object.state);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_common_robwork_msgs/GetRwStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec5f59bcd9871c158266b6d4f91ec6c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    caros_common_robwork_msgs/RwState state
    
    
    ================================================================================
    MSG: caros_common_robwork_msgs/RwState
    # Serialization of RobWork state
    caros_common_robwork_msgs/RwStateData[] state_data
    
    ================================================================================
    MSG: caros_common_robwork_msgs/RwStateData
    # Serialization of RobWork state data
    string name
    uint32 size
    uint8[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRwStateResponse(null);
    if (msg.state !== undefined) {
      resolved.state = RwState.Resolve(msg.state)
    }
    else {
      resolved.state = new RwState()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetRwStateRequest,
  Response: GetRwStateResponse,
  md5sum() { return 'ec5f59bcd9871c158266b6d4f91ec6c6'; },
  datatype() { return 'caros_common_robwork_msgs/GetRwState'; }
};
