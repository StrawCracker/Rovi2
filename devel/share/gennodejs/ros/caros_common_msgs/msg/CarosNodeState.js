// Auto-generated. Do not edit!

// (in-package caros_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CarosNodeState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.inError = null;
      this.error_msg = null;
      this.error_code = null;
      this.changed_event = null;
      this.previous_state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('inError')) {
        this.inError = initObj.inError
      }
      else {
        this.inError = false;
      }
      if (initObj.hasOwnProperty('error_msg')) {
        this.error_msg = initObj.error_msg
      }
      else {
        this.error_msg = '';
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('changed_event')) {
        this.changed_event = initObj.changed_event
      }
      else {
        this.changed_event = false;
      }
      if (initObj.hasOwnProperty('previous_state')) {
        this.previous_state = initObj.previous_state
      }
      else {
        this.previous_state = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarosNodeState
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [inError]
    bufferOffset = _serializer.bool(obj.inError, buffer, bufferOffset);
    // Serialize message field [error_msg]
    bufferOffset = _serializer.string(obj.error_msg, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int64(obj.error_code, buffer, bufferOffset);
    // Serialize message field [changed_event]
    bufferOffset = _serializer.bool(obj.changed_event, buffer, bufferOffset);
    // Serialize message field [previous_state]
    bufferOffset = _serializer.string(obj.previous_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarosNodeState
    let len;
    let data = new CarosNodeState(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [inError]
    data.inError = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_msg]
    data.error_msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [changed_event]
    data.changed_event = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [previous_state]
    data.previous_state = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state.length;
    length += object.error_msg.length;
    length += object.previous_state.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'caros_common_msgs/CarosNodeState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90a49c4f7cb1b4f048d2e3a9d6bcc097';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # state of node (INIT,STOPPED,RUNNING,ERROR,FATALERROR)
    string state
    
    bool inError
    string error_msg
    int64 error_code
    
    # true if
    bool changed_event
    string previous_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarosNodeState(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.inError !== undefined) {
      resolved.inError = msg.inError;
    }
    else {
      resolved.inError = false
    }

    if (msg.error_msg !== undefined) {
      resolved.error_msg = msg.error_msg;
    }
    else {
      resolved.error_msg = ''
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.changed_event !== undefined) {
      resolved.changed_event = msg.changed_event;
    }
    else {
      resolved.changed_event = false
    }

    if (msg.previous_state !== undefined) {
      resolved.previous_state = msg.previous_state;
    }
    else {
      resolved.previous_state = ''
    }

    return resolved;
    }
};

module.exports = CarosNodeState;
