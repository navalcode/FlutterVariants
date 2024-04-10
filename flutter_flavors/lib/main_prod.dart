import 'package:flutter/material.dart';
import 'package:flutter_flavors/config/app_config.dart';
import 'package:flutter_flavors/main.dart';

void main() {
  final prodAppConfig = AppConfig(
      appName: "App Producción",
      themeData: ThemeData(colorSchemeSeed: Colors.orange));

  runWithConfig(prodAppConfig);
}
