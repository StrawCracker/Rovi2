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

class SerialDeviceForceControlStartRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.base2forceframe = null;
      this.selection = null;
      this.wrench = null;
      this.limits = null;
    }
    else {
      if (initObj.hasOwnProperty('base2forceframe')) {
        this.base2forceframe = initObj.base2forceframe
      }
      else {
        this.base2forceframe = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('selection')) {
        this.selection = initObj.selection
      }
      else {
        this.selection = [];
      }
      if (initObj.hasOwnProperty('wrench')) {
        this.wrench = initObj.wrench
      }
      else {
        this.wrench = new geometry_msgs.msg.Wrench();
      }
      if (initObj.hasOwnProperty('limits')) {
        this.limits = initObj.limits
      }
      else {
        this.limits = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SerialDeviceForceControlStartRequest
    // Serialize message field [base2forceframe]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.base2forceframe, buffer, bufferOffset);
    // Serialize message field [selection]
    bufferOffset = _arraySerializer.uint32(obj.selection, buffer, bufferOffset, null);
    // Serialize message field [wrench]
    bufferOffset = geometry_msgs.msg.Wrench.serialize(obj.wrench, buffer, bufferOffset);
    // Serialize message field [limits]
    bufferOffset = _arraySerializer.float32(obj.limits, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SerialDeviceForceControlStartRequest
    let len;
    let data = new SerialDeviceForceControlStartRequest(null);
    // Deserialize message field [base2forceframe]
    data.base2forceframe = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [selection]
    data.selection = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [wrench]
    data.wrench = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset);
    // Deserialize message field [limits]
    data.limits = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.selection.length;
    length += 4 * object.limits.length;
    return length + 112;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/SerialDeviceForceControlStartRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5679dd01d3f196d8309c0d96fb93efd1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    geometry_msgs/Transform base2forceframe
    
    
    uint32[] selection
    
    
    geometry_msgs/Wrench wrench
    
    
    float32[] limits
    
    
    
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
    
    ================================================================================
    MSG: geometry_msgs/Wrench
    # This represents force in free space, separated into
    # its linear and angular parts.
    Vector3  force
    Vector3  torque
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SerialDeviceForceControlStartRequest(null);
    if (msg.base2forceframe !== undefined) {
      resolved.base2forceframe = geometry_msgs.msg.Transform.Resolve(msg.base2forceframe)
    }
    else {
      resolved.base2forceframe = new geometry_msgs.msg.Transform()
    }

    if (msg.selection !== undefined) {
      resolved.selection = msg.selection;
    }
    else {
      resolved.selection = []
    }

    if (msg.wrench !== undefined) {
      resolved.wrench = geometry_msgs.msg.Wrench.Resolve(msg.wrench)
    }
    else {
      resolved.wrench = new geometry_msgs.msg.Wrench()
    }

    if (msg.limits !== undefined) {
      resolved.limits = msg.limits;
    }
    else {
      resolved.limits = []
    }

    return resolved;
    }
};

class SerialDeviceForceControlStartResponse {
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
    // Serializes a message object of type SerialDeviceForceControlStartResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SerialDeviceForceControlStartResponse
    let len;
    let data = new SerialDeviceForceControlStartResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'caros_control_msgs/SerialDeviceForceControlStartResponse';
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
    const resolved = new SerialDeviceForceControlStartResponse(null);
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
  Request: SerialDeviceForceControlStartRequest,
  Response: SerialDeviceForceControlStartResponse,
  md5sum() { return '5e3ec31bde7d465f1f29c724fa9f5796'; },
  datatype() { return 'caros_control_msgs/SerialDeviceForceControlStart'; }
};
