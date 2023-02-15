import 'package:flutter/services.dart';
import 'package:libphonenumber_platform_interface/libphonenumber_platform_interface.dart';

class MethodChannelLibPhoneNumber extends LibPhoneNumberPlatform {
  MethodChannel methodChannel = MethodChannel('plugin.libphonenumber');

  @override
  Future<String?> formatAsYouType(String phoneNumber, String isoCode) async {
    return await methodChannel
        .invokeMethod<String>('formatAsYouType', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  @override
  Future<int?> getNumberType(String phoneNumber, String isoCode) async {
    return await methodChannel
        .invokeMethod<int>('getNumberType', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  @override
  Future<Map<String, dynamic>?> getRegionInfo(
      String phoneNumber, String isoCode) async {
    return await methodChannel
        .invokeMapMethod('getRegionInfo', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  @override
  Future<bool?> isValidPhoneNumber(String phoneNumber, String isoCode) async {
    return await methodChannel
        .invokeMethod<bool>('isValidPhoneNumber', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  @override
  Future<String?> normalizePhoneNumber(
      String phoneNumber, String isoCode) async {
    return await methodChannel
        .invokeMethod<String>('normalizePhoneNumber', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  @override
  Future<List<String>?> getAllCountries() async {
    return await methodChannel.invokeListMethod<String>('getAllCountries');
  }

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
