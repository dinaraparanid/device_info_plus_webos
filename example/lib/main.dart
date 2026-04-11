import 'package:device_info_plus_webos/device_info_plugin_webos.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _sdkVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String sdkVersion;

    try {
      final deviceInfo = await DeviceInfoPluginWebOS().deviceInfo();
      sdkVersion = deviceInfo.sdkVersion;
    } catch (e) {
      sdkVersion = 'error';
    }

    if (!mounted) {
      return;
    }

    setState(() => _sdkVersion = sdkVersion);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Plugin example app')),
        body: Center(
          child: Text(
            'Running on: webOS $_sdkVersion',
            style: TextStyle(fontSize: 64),
          ),
        ),
      ),
    );
  }
}
