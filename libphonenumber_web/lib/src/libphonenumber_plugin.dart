import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:libphonenumber_platform_interface/libphonenumber_platform_interface.dart';
import 'package:libphonenumber_web/src/interop/libphonenumber_interop.dart';

class LibPhoneNumberPlugin extends LibPhoneNumberPlatform {
  static void registerWith(Registrar registrar) {
    final MethodChannel methodChannel = MethodChannel(
      'plugin.libphonenumber',
      const StandardMethodCodec(),
      registrar.messenger,
    );
    final LibPhoneNumberPlugin instance = LibPhoneNumberPlugin();
    LibPhoneNumberPlatform.instance = instance;
    methodChannel.setMethodCallHandler(instance.handleMethodCall);
  }

  Future<dynamic> handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'formatAsYouType':
        String phoneNumber = call.arguments['phoneNumber'];
        String isoCode = call.arguments['isoCode'];
        return formatAsYouType(phoneNumber, isoCode);
      case 'getNameForNumber':
        String phoneNumber = call.arguments['phoneNumber'];
        String isoCode = call.arguments['isoCode'];
        return getNameForNumber(phoneNumber, isoCode);
      case 'getNumberType':
        String phoneNumber = call.arguments['phoneNumber'];
        String isoCode = call.arguments['isoCode'];
        return getNumberType(phoneNumber, isoCode);
      case 'getRegionInfo':
        String phoneNumber = call.arguments['phoneNumber'];
        String isoCode = call.arguments['isoCode'];
        return getRegionInfo(phoneNumber, isoCode);
      case 'isValidNumber':
        String phoneNumber = call.arguments['phoneNumber'];
        String isoCode = call.arguments['isoCode'];
        return isValidNumber(phoneNumber, isoCode);
      case 'normalizePhoneNumber':
        String phoneNumber = call.arguments['phoneNumber'];
        String isoCode = call.arguments['isoCode'];
        return normalizePhoneNumber(phoneNumber, isoCode);
      default:
        throw PlatformException(
            code: 'Unimplemented',
            details: "The libphonenumber plugin for web doesn't implement "
                "the method '${call.method}'");
    }
  }

  @override
  Future<String> formatAsYouType(String phoneNumber, String isoCode) async {
    AsYouTypeFormatterJsImpl phoneUtilJsImpl =
        AsYouTypeFormatterJsImpl(isoCode.toUpperCase());
    String result;

    for (int i = 0; i < phoneNumber.length; i++) {
      result = phoneUtilJsImpl.inputDigit(phoneNumber[i]);
    }

    return result;
  }

  @override
  Future<String> getNameForNumber(String phoneNumber, String isoCode) async {
    throw new UnimplementedError(
        'getNameForNumber not implement for Flutter Web');
  }

  @override
  Future<int> getNumberType(String phoneNumber, String isoCode) async {
    PhoneNumberUtilJsImpl phoneUtilJsImpl = PhoneNumberUtilJsImpl.getInstance();
    PhoneNumberJsImpl phoneNumberJsImpl =
        phoneUtilJsImpl.parse(phoneNumber, isoCode.toUpperCase());

    int index = phoneUtilJsImpl.getNumberType(phoneNumberJsImpl);

    return index;
  }

  @override
  Future<Map<String, dynamic>> getRegionInfo(
      String phoneNumber, String isoCode) async {
    PhoneNumberUtilJsImpl phoneUtilJsImpl = PhoneNumberUtilJsImpl.getInstance();
    PhoneNumberJsImpl phoneNumberJsImpl =
        phoneUtilJsImpl.parse(phoneNumber, isoCode.toUpperCase());

    String regionCode =
        phoneUtilJsImpl.getRegionCodeForNumber(phoneNumberJsImpl);
    String countryCode = phoneNumberJsImpl.getCountryCode().toString();
    String formattedNumber = phoneUtilJsImpl.format(
        phoneNumberJsImpl, PhoneNumberFormat.NATIONAL.index);

    RegionInfo info = RegionInfo(
        regionPrefix: countryCode,
        isoCode: regionCode,
        formattedPhoneNumber: formattedNumber);

    return info.toJson();
  }

  @override
  Future<bool> isValidNumber(String phoneNumber, String isoCode) async {
    PhoneNumberUtilJsImpl phoneUtilJsImpl = PhoneNumberUtilJsImpl.getInstance();
    PhoneNumberJsImpl phoneNumberJsImpl =
        phoneUtilJsImpl.parse(phoneNumber, isoCode.toUpperCase());

    return phoneUtilJsImpl.isValidNumber(phoneNumberJsImpl);
  }

  @override
  Future<String> normalizePhoneNumber(
      String phoneNumber, String isoCode) async {
    PhoneNumberUtilJsImpl phoneUtilJsImpl = PhoneNumberUtilJsImpl.getInstance();
    PhoneNumberJsImpl phoneNumberJsImpl =
        phoneUtilJsImpl.parse(phoneNumber, isoCode.toUpperCase());

    String normalized =
        phoneUtilJsImpl.format(phoneNumberJsImpl, PhoneNumberFormat.E164.index);

    return normalized;
  }
}
