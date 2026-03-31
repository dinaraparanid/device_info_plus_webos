import 'package:device_info_plus_webos/src/device_info_plus_webos.dart';

export 'src/device_info_plus_webos.dart';

final class DeviceInfoPlusWebOS {
  static Future<WebOSDeviceInfo?> get deviceInfo {
    return DeviceInfoPlusWebOSPlatform.instance.deviceInfo;
  }
}
