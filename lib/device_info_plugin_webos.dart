import 'package:device_info_plus_platform_interface/device_info_plus_platform_interface.dart';
import 'package:device_info_plus_webos/src/webos_device_info.dart';

export 'src/webos_device_info.dart';

final class DeviceInfoPluginWebOS {
  const DeviceInfoPluginWebOS();

  Future<WebOSDeviceInfo> deviceInfo() async {
    final info = await DeviceInfoPlatform.instance.deviceInfo();
    return info as WebOSDeviceInfo;
  }
}
