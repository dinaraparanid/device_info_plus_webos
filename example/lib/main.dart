import 'package:flutter/material.dart';
import 'dart:async';

import 'package:device_info_plus_webos/device_info_plus_webos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String platformVersion;

    try {
      final deviceInfo = await DeviceInfoPlusWebOS.deviceInfo;
      platformVersion = deviceInfo?.version ?? 'undefined';
    } catch (e) {
      platformVersion = 'error';
    }

    if (!mounted) {
      return;
    }

    setState(() => _platformVersion = platformVersion);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Plugin example app')),
        body: Center(child: Text('Running on: webOS $_platformVersion')),
      ),
    );
  }
}
