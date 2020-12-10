# libphonenumber_package

Flutter package for Google libphonenumber.

## :warning: Notice

This package only support **Web** for now, and has similar implementation with [libphonenumber](https://pub.dev/packages/libphonenumber).

## Usage

To use this package, add `libphonenumber_package: ^any` as a dependency in your pubspec.yaml file. 

:warning: For **Android** and **IOS** usage use [libphonenumber](https://pub.dev/packages/libphonenumber).

### Android and IOS Usage

This package does not support Android and IOS yet use [libphonenumber](https://pub.dev/packages/libphonenumber), since it was inspired by and has similar implementation with [libphonenumber](https://pub.dev/packages/libphonenumber).

### Web Usage

In your app directory, edit `web/index.html` to add the following

```html

<!DOCTYPE html>
<html>
    <head>
        ...
    </head>
    <body>
    
        ...

        <script src="packages/libphonenumber_package/js/libphonenumber.js"></script>
        <script src="packages/libphonenumber_package/js/stringbuffer.js"></script>

        ...

        <script src="main.dart.js" type="application/javascript"></script>
    </body>
</html>
```

### Using the plugin

Once you have added `libphonenumber_package` package and edit `web/index.html`, you should be able to use the 
```dart
import 'package:libphonenumber_package/phone_number_util.dart';
```
or any other source library available later on

### Available Methods

For available methods see [libphonenumber_platform_interface](https://pub.dev/packages/libphonenumber_platform_interface)

### Future Works :rocket:
  - Support for Windows and MacOS with Dart FFI 
  - Support for Android and IOS (Unsure)

## Contributions
If you encounter any problem or the library is missing a feature feel free to open an issue. Feel free to fork, improve the package and make pull request.

## Contributors 
<a href="https://github.com/natintosh/plugin_libphonenumber/graphs/contributors">
  <img src="https://contributors-img.web.app/image?repo=natintosh/plugin_libphonenumber" />
</a>

Made with [contributors-img](https://contributors-img.web.app).


