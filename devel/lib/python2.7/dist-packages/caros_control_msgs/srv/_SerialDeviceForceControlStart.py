# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from caros_control_msgs/SerialDeviceForceControlStartRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class SerialDeviceForceControlStartRequest(genpy.Message):
  _md5sum = "5679dd01d3f196d8309c0d96fb93efd1"
  _type = "caros_control_msgs/SerialDeviceForceControlStartRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """


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
"""
  __slots__ = ['base2forceframe','selection','wrench','limits']
  _slot_types = ['geometry_msgs/Transform','uint32[]','geometry_msgs/Wrench','float32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       base2forceframe,selection,wrench,limits

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SerialDeviceForceControlStartRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.base2forceframe is None:
        self.base2forceframe = geometry_msgs.msg.Transform()
      if self.selection is None:
        self.selection = []
      if self.wrench is None:
        self.wrench = geometry_msgs.msg.Wrench()
      if self.limits is None:
        self.limits = []
    else:
      self.base2forceframe = geometry_msgs.msg.Transform()
      self.selection = []
      self.wrench = geometry_msgs.msg.Wrench()
      self.limits = []

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
      buff.write(_get_struct_7d().pack(_x.base2forceframe.translation.x, _x.base2forceframe.translation.y, _x.base2forceframe.translation.z, _x.base2forceframe.rotation.x, _x.base2forceframe.rotation.y, _x.base2forceframe.rotation.z, _x.base2forceframe.rotation.w))
      length = len(self.selection)
      buff.write(_struct_I.pack(length))
      pattern = '<%sI'%length
      buff.write(struct.pack(pattern, *self.selection))
      _x = self
      buff.write(_get_struct_6d().pack(_x.wrench.force.x, _x.wrench.force.y, _x.wrench.force.z, _x.wrench.torque.x, _x.wrench.torque.y, _x.wrench.torque.z))
      length = len(self.limits)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.limits))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.base2forceframe is None:
        self.base2forceframe = geometry_msgs.msg.Transform()
      if self.wrench is None:
        self.wrench = geometry_msgs.msg.Wrench()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.base2forceframe.translation.x, _x.base2forceframe.translation.y, _x.base2forceframe.translation.z, _x.base2forceframe.rotation.x, _x.base2forceframe.rotation.y, _x.base2forceframe.rotation.z, _x.base2forceframe.rotation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sI'%length
      start = end
      end += struct.calcsize(pattern)
      self.selection = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 48
      (_x.wrench.force.x, _x.wrench.force.y, _x.wrench.force.z, _x.wrench.torque.x, _x.wrench.torque.y, _x.wrench.torque.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.limits = struct.unpack(pattern, str[start:end])
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
      buff.write(_get_struct_7d().pack(_x.base2forceframe.translation.x, _x.base2forceframe.translation.y, _x.base2forceframe.translation.z, _x.base2forceframe.rotation.x, _x.base2forceframe.rotation.y, _x.base2forceframe.rotation.z, _x.base2forceframe.rotation.w))
      length = len(self.selection)
      buff.write(_struct_I.pack(length))
      pattern = '<%sI'%length
      buff.write(self.selection.tostring())
      _x = self
      buff.write(_get_struct_6d().pack(_x.wrench.force.x, _x.wrench.force.y, _x.wrench.force.z, _x.wrench.torque.x, _x.wrench.torque.y, _x.wrench.torque.z))
      length = len(self.limits)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.limits.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.base2forceframe is None:
        self.base2forceframe = geometry_msgs.msg.Transform()
      if self.wrench is None:
        self.wrench = geometry_msgs.msg.Wrench()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.base2forceframe.translation.x, _x.base2forceframe.translation.y, _x.base2forceframe.translation.z, _x.base2forceframe.rotation.x, _x.base2forceframe.rotation.y, _x.base2forceframe.rotation.z, _x.base2forceframe.rotation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sI'%length
      start = end
      end += struct.calcsize(pattern)
      self.selection = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=length)
      _x = self
      start = end
      end += 48
      (_x.wrench.force.x, _x.wrench.force.y, _x.wrench.force.z, _x.wrench.torque.x, _x.wrench.torque.y, _x.wrench.torque.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.limits = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from caros_control_msgs/SerialDeviceForceControlStartResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SerialDeviceForceControlStartResponse(genpy.Message):
  _md5sum = "358e233cde0c8a8bcfea4ce193f8fc15"
  _type = "caros_control_msgs/SerialDeviceForceControlStartResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
bool success

"""
  __slots__ = ['success']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       success

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SerialDeviceForceControlStartResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.success is None:
        self.success = False
    else:
      self.success = False

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
      buff.write(_get_struct_B().pack(self.success))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
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
      buff.write(_get_struct_B().pack(self.success))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class SerialDeviceForceControlStart(object):
  _type          = 'caros_control_msgs/SerialDeviceForceControlStart'
  _md5sum = '5e3ec31bde7d465f1f29c724fa9f5796'
  _request_class  = SerialDeviceForceControlStartRequest
  _response_class = SerialDeviceForceControlStartResponse