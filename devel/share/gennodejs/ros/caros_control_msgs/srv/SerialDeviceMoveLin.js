// Auto-generated. Do not edit!

// (in-package caros_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SerialDeviceMoveLinRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.targets = null;
      this.speeds = null;
      this.blends = null;
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
      if (initObj.hasOwnProperty('blends')) {
        this.blends = initObj.blends
      }
      else {
        this.blends = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SerialDeviceMoveLinRequest
    // Serialize message field [targets]
    // Serialize the length for message field [targets]
    bufferOffset = _serializer.uint32(obj.targets.length, buffer, bufferOffset);
    obj.targets.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Transform.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [speeds]
    bufferOffset = _arraySerializer.float32(obj.speeds, buffer, bufferOffset, null);
    // Serialize message field [blends]
    bufferOffset = _arraySerializer.float32(obj.blends, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SerialDeviceMoveLinRequest
    let len;
    let data = new SerialDeviceMoveLinRequest(null);
    // Deserialize message field [targets]
    // Deserialize array length for message field [targets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.targets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.targets[i] = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [speeds]
    data.speeds = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [blends]
    data.blends = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.targets.length;
    length += 4 * object.speeds.length;
    length += 4 * object.blends.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/SerialDeviceMoveLinRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eee6c3bbcf6b8b8d19dd77c4890b2d3d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/Transform[] targets
    
    
    float32[] speeds
    
    
    float32[] blends
    
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SerialDeviceMoveLinRequest(null);
    if (msg.targets !== undefined) {
      resolved.targets = new Array(msg.targets.length);
      for (let i = 0; i < resolved.targets.length; ++i) {
        resolved.targets[i] = geometry_msgs.msg.Transform.Resolve(msg.targets[i]);
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

    if (msg.blends !== undefined) {
      resolved.blends = msg.blends;
    }
    else {
      resolved.blends = []
    }

    return resolved;
    }
};

class SerialDeviceMoveLinResponse {
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
    // Serializes a message object of type SerialDeviceMoveLinResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SerialDeviceMoveLinResponse
    let len;
    let data = new SerialDeviceMoveLinResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/SerialDeviceMoveLinResponse';
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
    const resolved = new SerialDeviceMoveLinResponse(null);
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
  Request: SerialDeviceMoveLinRequest,
  Response: SerialDeviceMoveLinResponse,
  md5sum() { return '9d894296389820976b255220f98863da'; },
  datatype() { return 'caros_control_msgs/SerialDeviceMoveLin'; }
};
