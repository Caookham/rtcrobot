// Auto-generated. Do not edit!

// (in-package rtcrobot_actions.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DockResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.docked = null;
      this.dock_id = null;
    }
    else {
      if (initObj.hasOwnProperty('docked')) {
        this.docked = initObj.docked
      }
      else {
        this.docked = false;
      }
      if (initObj.hasOwnProperty('dock_id')) {
        this.dock_id = initObj.dock_id
      }
      else {
        this.dock_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DockResult
    // Serialize message field [docked]
    bufferOffset = _serializer.bool(obj.docked, buffer, bufferOffset);
    // Serialize message field [dock_id]
    bufferOffset = _serializer.string(obj.dock_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DockResult
    let len;
    let data = new DockResult(null);
    // Deserialize message field [docked]
    data.docked = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dock_id]
    data.dock_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.dock_id.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rtcrobot_actions/DockResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c9af1b0b876b5336e9869a2cfc41c1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define the result
    # Are we docked and charging?
    bool docked
    
    # Name of the dock, if known
    string dock_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DockResult(null);
    if (msg.docked !== undefined) {
      resolved.docked = msg.docked;
    }
    else {
      resolved.docked = false
    }

    if (msg.dock_id !== undefined) {
      resolved.dock_id = msg.dock_id;
    }
    else {
      resolved.dock_id = ''
    }

    return resolved;
    }
};

module.exports = DockResult;
