import 'dart:async';
import 'dart:js_interop';

import 'package:device_info_plus_webos/src/device_info_plus_webos_platform_interface.dart';
import 'package:device_info_plus_webos/src/webos_device_info.dart';
import 'package:device_info_plus_webos/src/webos_interop.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

final class DeviceInfoPlusWebOSWeb extends DeviceInfoPlusWebOSPlatform {
  DeviceInfoPlusWebOSWeb._();

  static void registerWith(Registrar registrar) {
    DeviceInfoPlusWebOSPlatform.instance = DeviceInfoPlusWebOSWeb._();
  }

  WebOSDeviceInfo? _cachedDeviceInfo;

  @override
  Future<WebOSDeviceInfo?> get deviceInfo async {
    return _cachedDeviceInfo ??= await _deviceInfo;
  }

  Future<WebOSDeviceInfo?> get _deviceInfo {
    final completer = Completer<WebOSDeviceInfo>();

    void callback(JSDeviceInfo info) {
      completer.complete(WebOSDeviceInfo.fromJS(info));
    }

    WebOS.deviceInfo(callback.toJS);
    return completer.future;
  }
}
