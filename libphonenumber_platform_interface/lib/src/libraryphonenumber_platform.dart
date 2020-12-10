import 'package:flutter/services.dart';
import 'package:libphonenumber_platform_interface/src/method_channel/libraryphonenumber_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class LibraryPhoneNumberPlatform extends PlatformInterface {
  LibraryPhoneNumberPlatform() : super(token: _token);

  static final Object _token = Object();

  static LibraryPhoneNumberPlatform _instance =
      MethodChannelLibraryPhoneNumber();

  static LibraryPhoneNumberPlatform get instance => _instance;

  static set instance(LibraryPhoneNumberPlatform intance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String> getNameForNumber() async {
    throw new Exception();
  }
}
