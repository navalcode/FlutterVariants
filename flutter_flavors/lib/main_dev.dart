import 'package:flutter/material.dart';
import 'package:flutter_flavors/config/app_config.dart';
import 'package:flutter_flavors/main.dart';

void main() {
  final devAppConfig = AppConfig(
      appName: "App Desarrollo",
      themeData: ThemeData(colorSchemeSeed: Colors.blue));

  runWithConfig(devAppConfig);
}
