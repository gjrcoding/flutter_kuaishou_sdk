
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterKuaishouSdk {
  static const MethodChannel _channel = MethodChannel('flutter_kuaishou_sdk');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
