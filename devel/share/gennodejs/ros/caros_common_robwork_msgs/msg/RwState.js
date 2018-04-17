// Auto-generated. Do not edit!

// (in-package caros_common_robwork_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RwStateData = require('./RwStateData.js');

//-----------------------------------------------------------

class RwState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state_data = null;
    }
    else {
      if (initObj.hasOwnProperty('state_data')) {
        this.state_data = initObj.state_data
      }
      else {
        this.state_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RwState
    // Serialize message field [state_data]
    // Serialize the length for message field [state_data]
    bufferOffset = _serializer.uint32(obj.state_data.length, buffer, bufferOffset);
    obj.state_data.forEach((val) => {
      bufferOffset = RwStateData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RwState
    let len;
    let data = new RwState(null);
    // Deserialize message field [state_data]
    // Deserialize array length for message field [state_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.state_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.state_data[i] = RwStateData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.state_data.forEach((val) => {
      length += RwStateData.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'caros_common_robwork_msgs/RwState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91a8153d2e6cb16c0e4126365820f1d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RwState(null);
    if (msg.state_data !== undefined) {
      resolved.state_data = new Array(msg.state_data.length);
      for (let i = 0; i < resolved.state_data.length; ++i) {
        resolved.state_data[i] = RwStateData.Resolve(msg.state_data[i]);
      }
    }
    else {
      resolved.state_data = []
    }

    return resolved;
    }
};

module.exports = RwState;
