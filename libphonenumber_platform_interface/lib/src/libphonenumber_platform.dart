import 'package:libphonenumber_platform_interface/src/method_channel/libhonenumber_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class LibPhoneNumberPlatform extends PlatformInterface {
  LibPhoneNumberPlatform() : super(token: _token);

  static final Object _token = Object();

  static LibPhoneNumberPlatform _instance = MethodChannelLibPhoneNumber();

  static LibPhoneNumberPlatform get instance => _instance;

  static set instance(LibPhoneNumberPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getNameForNumber(String phoneNumber, String isoCode) async {
    throw UnimplementedError('getNameForNumber() has not been implemented.');
  }

  Future<bool?> isValidNumber(String phoneNumber, String isoCode) async {
    throw UnimplementedError('isValidNumber() has not been implemented.');
  }

  Future<String?> normalizePhoneNumber(
      String phoneNumber, String isoCode) async {
    throw UnimplementedError(
        'normalizePhoneNumber() has not been implemented.');
  }

  Future<Map<String, dynamic>?> getRegionInfo(
      String phoneNumber, String isoCode) async {
    throw UnimplementedError('getRegionInfo() has not been implemented.');
  }

  Future<int?> getNumberType(String phoneNumber, String isoCode) async {
    throw UnimplementedError('getNumberType() has not been implemented.');
  }

  Future<String?> formatAsYouType(String phoneNumber, String isoCode) async {
    throw UnimplementedError('formatAsYouType() has not been implemented.');
  }
}
