import 'package:libphonenumber_platform_interface/libphonenumber_platform_interface.dart';

class PhoneNumberUtil {
  static LibPhoneNumberPlatform get _platform =>
      LibPhoneNumberPlatform.instance;

  static Future<String?> getNameForNumber(
      String phoneNumber, String isoCode) async {
    return _platform.getNameForNumber(phoneNumber, isoCode);
  }

  static Future<bool?> isValidNumber(String phoneNumber, String isoCode) async {
    return _platform.isValidNumber(phoneNumber, isoCode);
  }

  static Future<String?> normalizePhoneNumber(
      String phoneNumber, String isoCode) async {
    return _platform.normalizePhoneNumber(phoneNumber, isoCode);
  }

  static Future<RegionInfo> getRegionInfo(
      String phoneNumber, String isoCode) async {
    Map<String, dynamic>? response =
        await _platform.getRegionInfo(phoneNumber, isoCode);

    return RegionInfo.fromJson(response);
  }

  static Future<PhoneNumberType> getNumberType(
      String phoneNumber, String isoCode) async {
    int? index = await _platform.getNumberType(phoneNumber, isoCode);
    return PhoneNumberTypeUtil.getType(index);
  }

  static Future<String?> formatAsYouType(
      String phoneNumber, String isoCode) async {
    return _platform.formatAsYouType(phoneNumber, isoCode);
  }
}
