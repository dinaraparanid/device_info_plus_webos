import 'dart:async';
import 'dart:js_interop';

import 'package:device_info_plus_platform_interface/device_info_plus_platform_interface.dart';
import 'package:device_info_plus_webos/src/webos_device_info.dart';
import 'package:device_info_plus_webos/src/webos_interop.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

final class DeviceInfoPlusWebOSPlugin extends DeviceInfoPlatform {
  DeviceInfoPlusWebOSPlugin._();

  static void registerWith(Registrar registrar) {
    DeviceInfoPlatform.instance = DeviceInfoPlusWebOSPlugin._();
  }

  WebOSDeviceInfo? _cachedDeviceInfo;

  @override
  Future<BaseDeviceInfo> deviceInfo() async {
    return _cachedDeviceInfo ??= await _deviceInfo;
  }

  Future<WebOSDeviceInfo> get _deviceInfo {
    final completer = Completer<WebOSDeviceInfo>();

    void callback(JSDeviceInfo info) {
      completer.complete(info.toWebOSDeviceInfo());
    }

    WebOS.deviceInfo(callback.toJS);
    return completer.future;
  }
}
