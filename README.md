# Flutter Variants

[Español](README.es.md)

A Flutter configuration example with separate development and production entry points, shared app settings and flavor-specific assets. The application lives in [`flutter_flavors/`](flutter_flavors/).

## Read the code

- [`main_dev.dart`](flutter_flavors/lib/main_dev.dart) and [`main_prod.dart`](flutter_flavors/lib/main_prod.dart): environment entry points.
- [`app_config.dart`](flutter_flavors/lib/config/app_config.dart): shared name and theme configuration.
- [`pubspec.yaml`](flutter_flavors/pubspec.yaml): common and environment-specific assets.
- [`build.gradle`](flutter_flavors/android/app/build.gradle): Android product flavors and app names.

## Run the Android example

With Flutter and the Android SDK configured:

```sh
cd flutter_flavors
flutter pub get
flutter run --flavor dev --target lib/main_dev.dart
flutter run --flavor prod --target lib/main_prod.dart
```

This earlier example retains its original toolchain. Entry points and flavor names have been inspected; execution with current Flutter versions remains unverified. Release signing requires separate local configuration. For a current Flutter application with tests and CI, see [Bitácora](https://github.com/navalcode/bitacora-flutter).
