import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flavors/config/app_config.dart';
import 'package:flutter_flavors/constants/url_constants.dart';

void runWithConfig(AppConfig appConfig) {
  runApp(MainApp(
    appConfig: appConfig,
  ));
}

class MainApp extends StatelessWidget {
  final AppConfig appConfig;
  const MainApp({super.key, required this.appConfig});

  @override
  Widget build(BuildContext context) {
    const flavor = appFlavor;
    return MaterialApp(
      theme: appConfig.themeData,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.sunny),
          onPressed: () {},
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ejecutando ${appConfig.appName}'),
              const Text('Entorno: $flavor'), 
              Image.asset('assets/$flavor/babel.jpg'),
              Text(UrlConstants.getBaseUrl(flavor))
            ],
          ),
        ),
      ),
    );
  }
}
