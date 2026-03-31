import 'dart:js_interop';

@JS('webOS')
extension type WebOS._(JSObject _) implements JSObject {
  external static void deviceInfo(JSFunction callback);
}

extension type JSDeviceInfo._(JSObject _) implements JSObject {
  @JS('modelName') external String modelName;
  @JS('version') external String version;
  @JS('versionMajor') external int versionMajor;
  @JS('versionMinor') external int versionMinor;
  @JS('versionDot') external int versionDot;
  @JS('sdkVersion') external String sdkVersion;
  @JS('screenWidth') external double screenWidth;
  @JS('screenHeight') external double screenHeight;
  @JS('uhd') external bool uhd;
  @JS('uhd8k') external bool uhd8k;
  @JS('oled') external bool? oled;
  @JS('ddrSize') external String? ddrSize;
  @JS('hdr10') external bool hdr10;
  @JS('dolbyVision') external bool dolbyVision;
  @JS('dolbyAtmos') external bool dolbyAtmos;
  @JS('brandName') external String brandName;
  @JS('manufacturer') external String manufacturer;
  @JS('mainboardMaker') external String? mainboardMaker;
  @JS('platformBizType') external String platformBizType;
  @JS('tuner') external String tuner;
}
