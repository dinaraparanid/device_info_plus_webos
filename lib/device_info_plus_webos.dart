import 'package:device_info_plus_webos/src/device_info_plus_webos_platform_interface.dart';
import 'package:device_info_plus_webos/src/webos_device_info.dart';

export 'src/webos_device_info.dart';

final class DeviceInfoPlusWebOS {
  static Future<WebOSDeviceInfo?> get deviceInfo {
    return DeviceInfoPlusWebOSPlatform.instance.deviceInfo;
  }
}
