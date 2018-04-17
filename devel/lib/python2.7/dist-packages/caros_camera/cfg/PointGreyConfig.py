## *********************************************************
##
## File autogenerated for the caros_camera package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 292, 'description': 'Video mode.', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'video_mode', 'edit_method': "{'enum_description': 'Video mode for camera.', 'enum': [{'srcline': 13, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': '640x480_mono8', 'ctype': 'std::string', 'type': 'str', 'name': 'Format0_Mode5'}, {'srcline': 14, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': '640x480_mono16', 'ctype': 'std::string', 'type': 'str', 'name': 'Format0_Mode6'}, {'srcline': 15, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': '1280x960_bayer8', 'ctype': 'std::string', 'type': 'str', 'name': 'Format2_Mode1'}, {'srcline': 16, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': '1280x960_mono8', 'ctype': 'std::string', 'type': 'str', 'name': 'Format2_Mode2'}, {'srcline': 17, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': '1280x960_mono16', 'ctype': 'std::string', 'type': 'str', 'name': 'Format2_Mode6'}, {'srcline': 18, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'format7_mode0', 'ctype': 'std::string', 'type': 'str', 'name': 'Format7_Mode0'}, {'srcline': 19, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'format7_mode1', 'ctype': 'std::string', 'type': 'str', 'name': 'Format7_Mode1'}, {'srcline': 20, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'format7_mode2', 'ctype': 'std::string', 'type': 'str', 'name': 'Format7_Mode2'}, {'srcline': 21, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'format7_mode3', 'ctype': 'std::string', 'type': 'str', 'name': 'Format7_Mode3'}, {'srcline': 22, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'format7_mode4', 'ctype': 'std::string', 'type': 'str', 'name': 'Format7_Mode4'}]}", 'default': 'format7_mode0', 'level': 1, 'min': '', 'type': 'str'}, {'srcline': 292, 'description': 'Camera speed (frames per second).', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'frame_rate', 'edit_method': '', 'default': 7.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 292, 'description': 'Allow the camera to automatically change exposure (Combined Gain, Iris & Shutter control).', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'auto_exposure', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 292, 'description': 'Auto exposure value (like contrast).', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'exposure', 'edit_method': '', 'default': 1.35, 'level': 0, 'min': -10.0, 'type': 'double'}, {'srcline': 292, 'description': 'Shutter control state.', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'auto_shutter', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 292, 'description': 'Amount of time (in seconds) for the apeture to remain open.', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'shutter_speed', 'edit_method': '', 'default': 0.03, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 292, 'description': 'Gain control state.', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'auto_gain', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 292, 'description': 'Relative circuit gain.', 'max': 30.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gain', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -10.0, 'type': 'double'}, {'srcline': 292, 'description': 'Controls camera pan.', 'max': 1000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'pan', 'edit_method': '', 'default': 0, 'level': 0, 'min': -1000, 'type': 'int'}, {'srcline': 292, 'description': 'Controls camera tilt.', 'max': 1000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'tilt', 'edit_method': '', 'default': 0, 'level': 0, 'min': -1000, 'type': 'int'}, {'srcline': 292, 'description': 'Black level offset.', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'brightness', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 292, 'description': 'Gamma expansion exponent.', 'max': 4.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gamma', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.5, 'type': 'double'}, {'srcline': 292, 'description': 'Automatically change white balance', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'auto_white_balance', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 292, 'description': 'White balance blue component.', 'max': 1023, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'white_balance_blue', 'edit_method': '', 'default': 800, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'White balance red component.', 'max': 1023, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'white_balance_red', 'edit_method': '', 'default': 550, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Width of Format7 Region of Interest in unbinned pixels, full width if zero.', 'max': 65535, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'format7_roi_width', 'edit_method': '', 'default': 0, 'level': 1, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Height of Format7 Region of Interest in unbinned pixels, full height if zero.', 'max': 65535, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'format7_roi_height', 'edit_method': '', 'default': 0, 'level': 1, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Horizontal offset for left side of Format7 ROI in unbinned pixels.', 'max': 65535, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'format7_x_offset', 'edit_method': '', 'default': 0, 'level': 1, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Vertical offset for top of Format7 ROI in unbinned pixels.', 'max': 65535, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'format7_y_offset', 'edit_method': '', 'default': 0, 'level': 1, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Color coding (only for Format7 modes)', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'format7_color_coding', 'edit_method': "{'enum_description': 'Format7 color coding methods', 'enum': [{'srcline': 63, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'mono8', 'ctype': 'std::string', 'type': 'str', 'name': 'Mono8'}, {'srcline': 64, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'mono16', 'ctype': 'std::string', 'type': 'str', 'name': 'Mono16'}, {'srcline': 65, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'raw8', 'ctype': 'std::string', 'type': 'str', 'name': 'Raw8'}, {'srcline': 66, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'raw16', 'ctype': 'std::string', 'type': 'str', 'name': 'Raw16'}]}", 'default': 'raw8', 'level': 1, 'min': '', 'type': 'str'}, {'srcline': 292, 'description': 'Enable the external triggering mode.', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'enable_trigger', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 292, 'description': 'IIDC v1.31 Trigger Modes', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'trigger_mode', 'edit_method': "{'enum_description': 'IIDC v1.31 Trigger Modes', 'enum': [{'srcline': 74, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'mode0', 'ctype': 'std::string', 'type': 'str', 'name': 'Mode0'}, {'srcline': 75, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'mode1', 'ctype': 'std::string', 'type': 'str', 'name': 'Mode1_bulb_trigger'}, {'srcline': 76, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'mode3', 'ctype': 'std::string', 'type': 'str', 'name': 'Mode3'}, {'srcline': 77, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'mode14', 'ctype': 'std::string', 'type': 'str', 'name': 'Mode14'}]}", 'default': 'mode0', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 292, 'description': 'GPIO Trigger Sources', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'trigger_source', 'edit_method': "{'enum_description': 'GPIO Trigger Sources', 'enum': [{'srcline': 82, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'gpio0', 'ctype': 'std::string', 'type': 'str', 'name': 'GPIO0'}, {'srcline': 83, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'gpio1', 'ctype': 'std::string', 'type': 'str', 'name': 'GPIO1'}, {'srcline': 84, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'gpio2', 'ctype': 'std::string', 'type': 'str', 'name': 'GPIO2'}, {'srcline': 85, 'description': '', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const char * const', 'value': 'gpio3', 'ctype': 'std::string', 'type': 'str', 'name': 'GPIO3'}]}", 'default': 'gpio0', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 292, 'description': 'GPIO Trigger Polarity', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'trigger_polarity', 'edit_method': "{'enum_description': 'GPIO Polarities', 'enum': [{'srcline': 90, 'description': 'Low Polarity', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Low'}, {'srcline': 91, 'description': 'High Polarity', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'High'}]}", 'default': 0, 'level': 0, 'min': -2147483648, 'type': 'int'}, {'srcline': 292, 'description': 'Whether Trigger Delay is active.', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'enable_trigger_delay', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 292, 'description': 'The trigger delay to wait once triggered (in seconds).', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'trigger_delay', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 292, 'description': 'Trigger mode parameter.  Varies based on mode.', 'max': 32767, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'trigger_parameter', 'edit_method': '', 'default': 0, 'level': 0, 'min': -32768, 'type': 'int'}, {'srcline': 292, 'description': 'Whether strobe is sent.', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'enable_strobe1', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 292, 'description': 'GPIO Strobe Polarity', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'strobe1_polarity', 'edit_method': "{'enum_description': 'GPIO Polarities', 'enum': [{'srcline': 90, 'description': 'Low Polarity', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Low'}, {'srcline': 91, 'description': 'High Polarity', 'srcfile': '/home/resps/rovi2/Rovi2/src/caros/hwcomponents/caros_camera/cfg/PointGrey.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'High'}]}", 'default': 0, 'level': 0, 'min': -2147483648, 'type': 'int'}, {'srcline': 292, 'description': 'The delay between capture and strobe out (in milliseconds).', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'strobe1_delay', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 292, 'description': 'Strobe duration (in milliseconds)', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'strobe1_duration', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 1.0, 'type': 'double'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

PointGrey_Format0_Mode5 = '640x480_mono8'
PointGrey_Format0_Mode6 = '640x480_mono16'
PointGrey_Format2_Mode1 = '1280x960_bayer8'
PointGrey_Format2_Mode2 = '1280x960_mono8'
PointGrey_Format2_Mode6 = '1280x960_mono16'
PointGrey_Format7_Mode0 = 'format7_mode0'
PointGrey_Format7_Mode1 = 'format7_mode1'
PointGrey_Format7_Mode2 = 'format7_mode2'
PointGrey_Format7_Mode3 = 'format7_mode3'
PointGrey_Format7_Mode4 = 'format7_mode4'
PointGrey_Mono8 = 'mono8'
PointGrey_Mono16 = 'mono16'
PointGrey_Raw8 = 'raw8'
PointGrey_Raw16 = 'raw16'
PointGrey_Mode0 = 'mode0'
PointGrey_Mode1_bulb_trigger = 'mode1'
PointGrey_Mode3 = 'mode3'
PointGrey_Mode14 = 'mode14'
PointGrey_GPIO0 = 'gpio0'
PointGrey_GPIO1 = 'gpio1'
PointGrey_GPIO2 = 'gpio2'
PointGrey_GPIO3 = 'gpio3'
PointGrey_Low = 0
PointGrey_High = 1
