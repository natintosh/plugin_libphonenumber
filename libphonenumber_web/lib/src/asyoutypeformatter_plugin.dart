import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:libphonenumber_platform_interface/libraryphonenumber_platform_interface.dart';
import 'package:libphonenumber_web/src/interop/libphonenumber_interop.dart';

class AsYouTypeFormatterPlugin extends AsYouTypeFormatterPlatform {
  AsYouTypeFormatterJsImpl jsImpl;

  static void registerWith(Registrar registrar) {
    final MethodChannel methodChannel = MethodChannel(
      'plugin.libraryphonenumber',
      const StandardMethodCodec(),
      registrar.messenger,
    );
    final AsYouTypeFormatterPlugin instance = AsYouTypeFormatterPlugin();
    AsYouTypeFormatterPlatform.instance = instance;
    methodChannel.setMethodCallHandler(instance.handleMethodCall);
  }

  Future<dynamic> handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'initialize':
        final String regionCode = call.arguments['regionCode'];
        return initialize(regionCode);
      case 'clear':
        return clear();
      case 'getRememberedPosition':
        return getRememberedPosition();
      case 'inputDigit':
        final String nextChar = call.arguments['nextChar'];
        return inputDigit(nextChar);
      case 'inputDigitAndRememberPosition':
        final String nextChar = call.arguments['nextChar'];
        return inputDigitAndRememberPosition(nextChar);
      default:
        throw PlatformException(
            code: 'Unimplemented',
            details: "The libphonenumber plugin for web doesn't implement "
                "the method '${call.method}'");
    }
  }

  @override
  Future<void> initialize(String regionCode) async {
    jsImpl = AsYouTypeFormatterJsImpl(regionCode);
  }

  @override
  Future<void> clear() async {
    jsImpl.clear();
  }

  @override
  Future<int> getRememberedPosition() async {
    int position = jsImpl.getRememberedPosition();
    return position;
  }

  @override
  Future<String> inputDigit(String nextChar) async {
    String formattedInput = jsImpl.inputDigit(nextChar);

    return formattedInput;
  }

  @override
  Future<String> inputDigitAndRememberPosition(String nextChar) async {
    String formattedInput = jsImpl.inputDigitAndRememberPosition(nextChar);

    return formattedInput;
  }
}
