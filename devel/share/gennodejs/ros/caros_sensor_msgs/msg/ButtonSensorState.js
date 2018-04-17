// Auto-generated. Do not edit!

// (in-package caros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ButtonSensorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.digital = null;
      this.digital_ids = null;
      this.analog = null;
      this.analog_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('digital')) {
        this.digital = initObj.digital
      }
      else {
        this.digital = [];
      }
      if (initObj.hasOwnProperty('digital_ids')) {
        this.digital_ids = initObj.digital_ids
      }
      else {
        this.digital_ids = [];
      }
      if (initObj.hasOwnProperty('analog')) {
        this.analog = initObj.analog
      }
      else {
        this.analog = [];
      }
      if (initObj.hasOwnProperty('analog_ids')) {
        this.analog_ids = initObj.analog_ids
      }
      else {
        this.analog_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonSensorState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [digital]
    bufferOffset = _arraySerializer.bool(obj.digital, buffer, bufferOffset, null);
    // Serialize message field [digital_ids]
    bufferOffset = _arraySerializer.string(obj.digital_ids, buffer, bufferOffset, null);
    // Serialize message field [analog]
    bufferOffset = _arraySerializer.bool(obj.analog, buffer, bufferOffset, null);
    // Serialize message field [analog_ids]
    bufferOffset = _arraySerializer.string(obj.analog_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonSensorState
    let len;
    let data = new ButtonSensorState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [digital]
    data.digital = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [digital_ids]
    data.digital_ids = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [analog]
    data.analog = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [analog_ids]
    data.analog_ids = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.digital.length;
    object.digital_ids.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.analog.length;
    object.analog_ids.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'caros_sensor_msgs/ButtonSensorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbc246135ff6dad08335b5ff9b905da1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Represents the state of a set of analog and digital buttons.
    
    # Header containing information about time and frameid
    Header header
    
    # Array of bools for digital buttons
    bool[] digital
    
    # IDs for the digital buttons
    string[] digital_ids
    
    # Array of values for analog buttons
    bool[] analog
    
    # IDs for the analog buttons
    string[] analog_ids
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonSensorState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.digital !== undefined) {
      resolved.digital = msg.digital;
    }
    else {
      resolved.digital = []
    }

    if (msg.digital_ids !== undefined) {
      resolved.digital_ids = msg.digital_ids;
    }
    else {
      resolved.digital_ids = []
    }

    if (msg.analog !== undefined) {
      resolved.analog = msg.analog;
    }
    else {
      resolved.analog = []
    }

    if (msg.analog_ids !== undefined) {
      resolved.analog_ids = msg.analog_ids;
    }
    else {
      resolved.analog_ids = []
    }

    return resolved;
    }
};

module.exports = ButtonSensorState;
