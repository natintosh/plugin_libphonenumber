# libphonenumber_web

The web implementation of libphonenumber

## Usage

This package is the endorsed implementation of libraryphonenumber_package for the web platform, so it gets automatically added to your application by depending on `libphonenumber_package: ^any`.

### Update index.html

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

For available methods see [libraryphonenumber_platform_interface](https://pub.dev/packages/libphonenumber_platform_interface)

## Contributions
If you encounter any problem or the library is missing a feature feel free to open an issue. Feel free to fork, improve the package and make pull request.

## Contributors 
<a href="https://github.com/natintosh/plugin_libphonenumber/graphs/contributors">
  <img src="https://contributors-img.web.app/image?repo=natintosh/plugin_libphonenumber" />
</a>

Made with [contributors-img](https://contributors-img.web.app).


