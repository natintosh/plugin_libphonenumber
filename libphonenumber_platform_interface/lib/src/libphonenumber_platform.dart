import 'package:libphonenumber_platform_interface/libphonenumber_platform_interface.dart';
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

  /// [isValidPhoneNumber] checks if a [phoneNumber] is valid.
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<bool>].
  Future<bool?> isValidPhoneNumber(String phoneNumber, String isoCode) async {
    throw UnimplementedError('isValidPhoneNumber() has not been implemented.');
  }

  /// [normalizePhoneNumber] normalizes a string of characters representing a phone number
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<String>]
  Future<String?> normalizePhoneNumber(
      String phoneNumber, String isoCode, [PhoneNumberFormat format = PhoneNumberFormat.E164]) async {
    throw UnimplementedError(
        'normalizePhoneNumber() has not been implemented.');
  }

  /// [getRegionInfo] about phone number
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<RegionInfo>] of all information available about the [phoneNumber]
  Future<Map<String, dynamic>?> getRegionInfo(
      String phoneNumber, String isoCode) async {
    throw UnimplementedError('getRegionInfo() has not been implemented.');
  }

  /// [getNumberType] get type of phone number
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<PhoneNumberType>] type of phone number
  Future<int?> getNumberType(String phoneNumber, String isoCode) async {
    throw UnimplementedError('getNumberType() has not been implemented.');
  }

  /// [formatAsYouType] uses Google's libphonenumber input format as you type.
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<String>]
  Future<String?> formatAsYouType(String phoneNumber, String isoCode) async {
    throw UnimplementedError('formatAsYouType() has not been implemented.');
  }

  /// [getAllCountries] Returns all regions the library has metadata for.
  Future<List<String>?> getAllCountries() async {
    throw UnimplementedError('getAllCountries() has not been implemented.');
  }

  /// [getFormattedExampleNumber] Gets a valid number for the specified region, number type and number format.
  /// Accepts [isoCode], [PhoneNumberType], [PhoneNumberFormat]
  Future<String?> getFormattedExampleNumber(
      String isoCode, PhoneNumberType type, PhoneNumberFormat format) async {
    throw UnimplementedError(
        'getFormattedExampleNumber() has not been implemented.');
  }
}
