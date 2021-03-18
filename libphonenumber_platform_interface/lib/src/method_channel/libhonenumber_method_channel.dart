import 'package:flutter/services.dart';
import 'package:libphonenumber_platform_interface/src/libphonenumber_platform.dart';

class MethodChannelLibPhoneNumber extends LibPhoneNumberPlatform {
  MethodChannel methodChannel = MethodChannel('plugin.libphonenumber');

  @override
  Future<String?> formatAsYouType(String phoneNumber, String isoCode) {
    return methodChannel
        .invokeMethod<String>('formatAsYouType', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  @override
  Future<String?> getNameForNumber(String phoneNumber, String isoCode) {
    return methodChannel
        .invokeMethod<String>('getNameForNumber', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  @override
  Future<int?> getNumberType(String phoneNumber, String isoCode) {
    return methodChannel.invokeMethod<int>('getNumberType', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  @override
  Future<Map<String, dynamic>?> getRegionInfo(
      String phoneNumber, String isoCode) {
    return methodChannel.invokeMapMethod('getRegionInfo', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  @override
  Future<bool?> isValidNumber(String phoneNumber, String isoCode) {
    return methodChannel.invokeMethod<bool>('isValidNumber', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }

  @override
  Future<String?> normalizePhoneNumber(String phoneNumber, String isoCode) {
    return methodChannel
        .invokeMethod<String>('normalizePhoneNumber', <String, dynamic>{
      'phoneNumber': phoneNumber,
      'isoCode': isoCode,
    });
  }
}
