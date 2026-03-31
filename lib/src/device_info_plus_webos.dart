import 'dart:async';
import 'dart:js_interop';

import 'package:flutter/foundation.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

part 'device_info_plus_webos_platform_interface.dart';

part 'webos_device_info.dart';

part 'webos_interop.dart';

final class DeviceInfoPlusWebOSWeb extends DeviceInfoPlusWebOSPlatform {
  DeviceInfoPlusWebOSWeb._();

  static void registerWith(Registrar registrar) {
    DeviceInfoPlusWebOSPlatform.instance = DeviceInfoPlusWebOSWeb._();
  }

  @override
  Future<WebOSDeviceInfo?> get deviceInfo {
    final completer = Completer<WebOSDeviceInfo>();

    void callback(JSDeviceInfo info) {
      completer.complete(WebOSDeviceInfo.fromJS(info));
    }

    WebOS.deviceInfo(callback.toJS);
    return completer.future;
  }
}
