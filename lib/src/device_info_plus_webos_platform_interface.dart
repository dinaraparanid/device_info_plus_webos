import 'package:device_info_plus_webos/src/webos_device_info.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class DeviceInfoPlusWebOSPlatform extends PlatformInterface {
  DeviceInfoPlusWebOSPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeviceInfoPlusWebOSPlatform _instance = _Default();

  static DeviceInfoPlusWebOSPlatform get instance => _instance;

  static set instance(DeviceInfoPlusWebOSPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<WebOSDeviceInfo?> get deviceInfo {
    throw UnimplementedError('deviceInfo has not been implemented.');
  }
}

final class _Default extends DeviceInfoPlusWebOSPlatform {}
