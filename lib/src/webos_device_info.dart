import 'package:flutter/foundation.dart';

@immutable
final class WebOSDeviceInfo {
  const WebOSDeviceInfo({
    required this.modelName,
    required this.version,
    required this.versionMajor,
    required this.versionMinor,
    required this.versionDot,
    required this.sdkVersion,
    required this.screenWidth,
    required this.screenHeight,
    required this.uhd,
    required this.uhd8k,
    required this.oled,
    required this.ddrSize,
    required this.hdr10,
    required this.dolbyVision,
    required this.dolbyAtmos,
    required this.brandName,
    required this.manufacturer,
    required this.mainboardMaker,
    required this.platformBizType,
    required this.tuner,
  });

  /// The model name of the device in UTF-8 format.
  final String modelName;

  /// The full name of TV SW version.
  /// You can check the value in the software version of the TV Settings menu.
  final String version;

  /// The subset of TV SW version: Major version number.
  final int versionMajor;

  /// The subset of TV SW version: Minor version number.
  final int versionMinor;

  /// The subset of TV SW version: Revision version number.
  final int versionDot;

  /// The webOS TV SDK version in X.X.X format.
  /// You can check the value in the webOS TV version of the TV Settings menu.
  final String sdkVersion;

  /// The screen width in pixels for video playback.
  /// For the app resolution (width) for graphics display,
  /// use `window.innerWidth`.
  final double screenWidth;

  /// The screen height in pixels for video playback.
  /// For the app resolution (height) for graphics display,
  /// use `window.innerHeight`.
  final double screenHeight;

  /// Indicates whether the device supports Ultra HD resolution.
  final bool uhd;

  /// Indicates whether the device supports 8K UHD resolution.
  final bool uhd8k;

  /// Indicates whether the display type of device is OLED or not.
  final bool? oled;

  /// The size of DDR DRAM in Bytes.
  /// For example, if the size of DDR DRAM is 3G, the return value is '3G'.
  final String? ddrSize;

  /// Indicate whether the device supports HDR10.
  final bool hdr10;

  /// Indicate whether the device supports Dolby Vision.
  final bool dolbyVision;

  /// Indicate whether the device supports Dolby Atmos
  /// considering the connection status
  /// of external ARC devices and sound settings.
  final bool dolbyAtmos;

  /// The brand name of the device (ex. "LG").
  final String brandName;

  /// The manufacturer of the device (ex. "LG Electronics").
  final String manufacturer;

  /// The mainboard maker of the device (ex. "LG").
  final String? mainboardMaker;

  /// The platform business type of the device
  /// (returns either "LG" or "wee" if platform business type is not "LG".).
  final String platformBizType;

  /// Indicates whether the device supports tuner or not.
  final String tuner;

  @override
  String toString() {
    return 'WebosDeviceInfo('
        'modelName: $modelName, '
        'version: $version, '
        'versionMajor: $versionMajor, '
        'versionMinor: $versionMinor, '
        'versionDot: $versionDot, '
        'sdkVersion: $sdkVersion, '
        'screenWidth: $screenWidth, '
        'screenHeight: $screenHeight, '
        'uhd: $uhd, '
        'uhd8k: $uhd8k, '
        'oled: $oled, '
        'ddrSize: $ddrSize, '
        'hdr10: $hdr10, '
        'dolbyVision: $dolbyVision, '
        'dolbyAtmos: $dolbyAtmos, '
        'brandName: $brandName, '
        'manufacturer: $manufacturer, '
        'mainboardMaker: $mainboardMaker, '
        'platformBizType: $platformBizType, '
        'tuner: $tuner)';
  }
}
