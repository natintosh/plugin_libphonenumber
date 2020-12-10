import 'package:flutter/services.dart';
import 'package:libphonenumber_platform_interface/src/libraryphonenumber_platform.dart';

class MethodChannelLibraryPhoneNumber extends LibraryPhoneNumberPlatform {
  MethodChannel methodChannel = MethodChannel('plugin.libraryphonenumber');

  @override
  Future<void> clear() {
    return methodChannel.invokeMethod('clear');
  }

  @override
  Future<int> getRememberedPosition() {
    return methodChannel.invokeMethod<int>('getRememberedPosition');
  }

  @override
  Future<void> initialize(String regionCode) {
    return methodChannel.invokeMethod(
      'initialize',
      <String, Object>{
        'regionCode': regionCode,
      },
    );
  }

  @override
  Future<String> inputDigit(String nextChar) {
    return methodChannel.invokeMethod<String>(
      'inputDigit',
      <String, Object>{
        'nextChar': nextChar,
      },
    );
  }
}
