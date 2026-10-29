# Flutter Variants

[English](README.md)

Ejemplo de aprendizaje para separar configuración y recursos de una aplicación Flutter por entorno.

La aplicación está en [`flutter_flavors/`](flutter_flavors/). Incluye entradas de desarrollo y producción, una configuración compartida de nombre y tema, recursos por flavor y los flavors Android `dev` y `prod`.

## Por dónde leerlo

- [`main_dev.dart`](flutter_flavors/lib/main_dev.dart) y [`main_prod.dart`](flutter_flavors/lib/main_prod.dart): puntos de entrada por entorno.
- [`app_config.dart`](flutter_flavors/lib/config/app_config.dart): configuración compartida.
- [`main.dart`](flutter_flavors/lib/main.dart): arranque con la configuración elegida.
- [`pubspec.yaml`](flutter_flavors/pubspec.yaml): recursos comunes y específicos.
- [`build.gradle`](flutter_flavors/android/app/build.gradle): flavors y nombres de la aplicación Android.

## Ejecutar el ejemplo Android

Desde la raíz del repositorio, con Flutter y Android SDK configurados:

```sh
cd flutter_flavors
flutter pub get
flutter run --flavor dev --target lib/main_dev.dart
flutter run --flavor prod --target lib/main_prod.dart
```

Se revisaron los archivos y los nombres de los flavors para preparar esta guía. La ejecución con versiones actuales del toolchain queda pendiente de validación. La configuración de firma release necesita sus propios datos locales; estos comandos usan el modo debug predeterminado.

El alcance es la configuración por entorno. No representa una aplicación publicada ni una arquitectura completa de producto.
