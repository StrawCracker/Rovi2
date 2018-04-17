# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from caros_control_msgs/RobotState.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import caros_common_msgs.msg
import std_msgs.msg

class RobotState(genpy.Message):
  _md5sum = "3df80523bcb99d54ccf86ae91d0d78ba"
  _type = "caros_control_msgs/RobotState"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """#RobotState represents the state of one a single robot in the setup.

#Header containing information about time and frameid
Header header

#Joint configuration.
# Angles should be represented as radians and distances in meters.
caros_common_msgs/Q q

#Velocities should be represented as radians per sec
caros_common_msgs/Q dq

#Is the robot moving
bool is_moving

#Is the robot in collision
bool is_colliding

#Is Emergency Stopped
bool e_stopped

#Is Security Stopped
bool s_stopped

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

================================================================================
MSG: caros_common_msgs/Q
# A configuration Q
float64[] data
"""
  __slots__ = ['header','q','dq','is_moving','is_colliding','e_stopped','s_stopped']
  _slot_types = ['std_msgs/Header','caros_common_msgs/Q','caros_common_msgs/Q','bool','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,q,dq,is_moving,is_colliding,e_stopped,s_stopped

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotState, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.q is None:
        self.q = caros_common_msgs.msg.Q()
      if self.dq is None:
        self.dq = caros_common_msgs.msg.Q()
      if self.is_moving is None:
        self.is_moving = False
      if self.is_colliding is None:
        self.is_colliding = False
      if self.e_stopped is None:
        self.e_stopped = False
      if self.s_stopped is None:
        self.s_stopped = False
    else:
      self.header = std_msgs.msg.Header()
      self.q = caros_common_msgs.msg.Q()
      self.dq = caros_common_msgs.msg.Q()
      self.is_moving = False
      self.is_colliding = False
      self.e_stopped = False
      self.s_stopped = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.q.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.q.data))
      length = len(self.dq.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.dq.data))
      _x = self
      buff.write(_get_struct_4B().pack(_x.is_moving, _x.is_colliding, _x.e_stopped, _x.s_stopped))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.q is None:
        self.q = caros_common_msgs.msg.Q()
      if self.dq is None:
        self.dq = caros_common_msgs.msg.Q()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.q.data = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.dq.data = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 4
      (_x.is_moving, _x.is_colliding, _x.e_stopped, _x.s_stopped,) = _get_struct_4B().unpack(str[start:end])
      self.is_moving = bool(self.is_moving)
      self.is_colliding = bool(self.is_colliding)
      self.e_stopped = bool(self.e_stopped)
      self.s_stopped = bool(self.s_stopped)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.q.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.q.data.tostring())
      length = len(self.dq.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.dq.data.tostring())
      _x = self
      buff.write(_get_struct_4B().pack(_x.is_moving, _x.is_colliding, _x.e_stopped, _x.s_stopped))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.q is None:
        self.q = caros_common_msgs.msg.Q()
      if self.dq is None:
        self.dq = caros_common_msgs.msg.Q()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.q.data = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.dq.data = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      _x = self
      start = end
      end += 4
      (_x.is_moving, _x.is_colliding, _x.e_stopped, _x.s_stopped,) = _get_struct_4B().unpack(str[start:end])
      self.is_moving = bool(self.is_moving)
      self.is_colliding = bool(self.is_colliding)
      self.e_stopped = bool(self.e_stopped)
      self.s_stopped = bool(self.s_stopped)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_4B = None
def _get_struct_4B():
    global _struct_4B
    if _struct_4B is None:
        _struct_4B = struct.Struct("<4B")
    return _struct_4B
