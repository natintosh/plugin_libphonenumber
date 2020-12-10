// part of libraryphonenumber_platform_interface;

import 'package:libphonenumber_platform_interface/src/method_channel/asyoutypeformatter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class AsYouTypeFormatterPlatform extends PlatformInterface {
  AsYouTypeFormatterPlatform() : super(token: _token);

  static final Object _token = Object();

  static AsYouTypeFormatterPlatform _instance =
      MethodChannelAsYouTypeFormatter();

  static AsYouTypeFormatterPlatform get instance => _instance;

  static set instance(AsYouTypeFormatterPlatform intance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> initialize(String regionCode) async {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  Future<void> clear() async {
    throw UnimplementedError('clear() has not been implemented.');
  }

  Future<String> inputDigit(String nextChar) async {
    throw UnimplementedError('inputDigit() has not been implemented.');
  }

  Future<String> inputDigitAndRememberPosition(String nextChar) async {
    throw UnimplementedError(
        'inputDigitAndRememberPosition() has not been implemented.');
  }

  Future<int> getRememberedPosition() async {
    throw UnimplementedError(
        'getRememberedPosition() has not been implemented.');
  }
}
