import 'package:flutter/services.dart';
import 'package:libphonenumber_platform_interface/libphonenumber_platform_interface.dart';

class MethodChannelLibPhoneNumber extends LibPhoneNumberPlatform {
  MethodChannel methodChannel = const MethodChannel('plugin.libphonenumber');

  /// [formatAsYouType] uses Google's libphonenumber input format as you type.
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<String>]
  @override
  Future<String?> formatAsYouType(String phoneNumber, String isoCode) async {
    return await methodChannel
        .invokeMethod<String>('formatAsYouType', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  /// [getNumberType] get type of phone number
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<PhoneNumberType>] type of phone number
  @override
  Future<int?> getNumberType(String phoneNumber, String isoCode) async {
    return await methodChannel
        .invokeMethod<int>('getNumberType', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  /// [getRegionInfo] about phone number
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<RegionInfo>] of all information available about the [phoneNumber]
  @override
  Future<Map<String, dynamic>?> getRegionInfo(
      String phoneNumber, String isoCode) async {
    return await methodChannel
        .invokeMapMethod('getRegionInfo', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  /// [isValidPhoneNumber] checks if a [phoneNumber] is valid.
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<bool>].
  @override
  Future<bool?> isValidPhoneNumber(String phoneNumber, String isoCode) async {
    return await methodChannel
        .invokeMethod<bool>('isValidPhoneNumber', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  /// [normalizePhoneNumber] normalizes a string of characters representing a phone number
  /// Accepts [phoneNumber] and [isoCode]
  /// Returns [Future<String>]
  @override
  Future<String?> normalizePhoneNumber(
      String phoneNumber, String isoCode, [PhoneNumberFormat format = PhoneNumberFormat.E164]) async {
    return await methodChannel
        .invokeMethod<String>('normalizePhoneNumber', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
      'format': format.value
    });
  }

  /// [getAllCountries] Returns all regions the library has metadata for.
  @override
  Future<List<String>?> getAllCountries() async {
    return await methodChannel.invokeListMethod<String>('getAllCountries');
  }

  /// [getFormattedExampleNumber] Gets a valid number for the specified region, number type and number format.
  /// Accepts [isoCode], [PhoneNumberType], [PhoneNumberFormat]
  @override
  Future<String?> getFormattedExampleNumber(
      String isoCode, PhoneNumberType type, PhoneNumberFormat format) async {
    return await methodChannel
        .invokeMethod<String>('getFormattedExampleNumber', <String, dynamic>{
      'isoCode': isoCode,
      'type': type.value,
      'format': format.value,
    });
  }
}
