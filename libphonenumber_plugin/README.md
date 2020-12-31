# libphonenumber_plugin

Flutter plugin for Google libphonenumber.

## :warning: Notice

This plugin only support **Web** for now, and has similar implementation with [libphonenumber](https://pub.dev/packages/libphonenumber).

## Usage

To use this plugin, add `libphonenumber_plugin: ^any` as a dependency in your pubspec.yaml file. 

:warning: For **Android** and **IOS** usage use [libphonenumber](https://pub.dev/packages/libphonenumber).

### Android and IOS Usage

This plugin does not support Android and IOS yet use [libphonenumber](https://pub.dev/packages/libphonenumber), since it was inspired by and has similar implementation with [libphonenumber](https://pub.dev/packages/libphonenumber).

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

        <script src="packages/libphonenumber_plugin/js/libphonenumber.js"></script>
        <script src="packages/libphonenumber_plugin/js/stringbuffer.js"></script>

        ...

        <script src="main.dart.js" type="application/javascript"></script>
    </body>
</html>
```

### Using the plugin

Once you have added `libphonenumber_plugin` plugin and edit `web/index.html`, you should be able to use the 
```dart
import 'package:libphonenumber_plugin/libphonenumber_plugin.dart';
```
or any other source library available later on

### Available Methods

For available methods see [libphonenumber_platform_interface](https://pub.dev/packages/libphonenumber_platform_interface)

### Future Works :rocket:
  - Support for Windows and MacOS with Dart FFI 
  - Support for Android and IOS (Unsure)

## Contributions
If you encounter any problem or the library is missing a feature feel free to open an issue. Feel free to fork, improve the plugin and make pull request.

## Contributors 
<a href="https://github.com/natintosh/plugin_libphonenumber/graphs/contributors">
  <img src="https://contributors-img.web.app/image?repo=natintosh/plugin_libphonenumber" />
</a>

Made with [contributors-img](https://contributors-img.web.app).


