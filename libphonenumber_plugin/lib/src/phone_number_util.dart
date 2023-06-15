import 'package:libphonenumber_platform_interface/libphonenumber_platform_interface.dart';

/// A wrapper class [PhoneNumberUtil] that basically switch between plugin available for `Web` or `Android or IOS` and `Other platforms` when available.
class PhoneNumberUtil {
  static LibPhoneNumberPlatform get _platform =>
      LibPhoneNumberPlatform.instance;

  /// [isValidPhoneNumber] checks if a [phoneNumber] is valid.
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<bool>].
  static Future<bool?> isValidPhoneNumber(
      String phoneNumber, String isoCode) async {
    try {
      return await _platform.isValidPhoneNumber(phoneNumber, isoCode);
    } catch (_) {
      return false;
    }
  }

  /// [normalizePhoneNumber] normalizes a string of characters representing a phone number
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<String>]
  static Future<String?> normalizePhoneNumber(
      String phoneNumber, String isoCode, [PhoneNumberFormat format = PhoneNumberFormat.E164]) async {
    return await _platform.normalizePhoneNumber(phoneNumber, isoCode, format);
  }

  /// [getRegionInfo] about phone number
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<RegionInfo>] of all information available about the [phoneNumber]
  static Future<RegionInfo> getRegionInfo(
      String phoneNumber, String isoCode) async {
    Map<String, dynamic>? response =
        await _platform.getRegionInfo(phoneNumber, isoCode);

    return RegionInfo.fromJson(response);
  }

  /// [getNumberType] get type of phone number
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<PhoneNumberType>] type of phone number
  static Future<PhoneNumberType> getNumberType(
      String phoneNumber, String isoCode) async {
    int? index = await _platform.getNumberType(phoneNumber, isoCode);
    return PhoneNumberType.fromIndex(index);
  }

  /// [formatAsYouType] uses Google's libphonenumber input format as you type.
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<String>]
  static Future<String?> formatAsYouType(
      String phoneNumber, String isoCode) async {
    return await _platform.formatAsYouType(phoneNumber, isoCode);
  }

  /// [getAllCountries] Returns all regions the library has metadata for.
  static Future<List<String>?> getAllCountries() async {
    return await _platform.getAllCountries();
  }

  /// [getFormattedExampleNumber] Gets a valid number for the specified region, number type and number format.
  /// Accepts [isoCode], [PhoneNumberType], [PhoneNumberFormat]
  static Future<String?> getFormattedExampleNumber(
      String isoCode, PhoneNumberType type, PhoneNumberFormat format) async {
    return await _platform.getFormattedExampleNumber(isoCode, type, format);
  }
}
