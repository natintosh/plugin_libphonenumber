import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:libphonenumber_platform_interface/libraryphonenumber_platform_interface.dart';
import 'package:libphonenumber_web/src/interop/libphonenumber_interop.dart';
import 'package:libphonenumber_web/src/phonenumber_plugin.dart';

class ShortNumberInfoPlugin extends ShortNumberInfoPlatform {
  ShortNumberInfoJsImpl jsImpl;

  static void registerWith(Registrar registrar) {
    final MethodChannel methodChannel = MethodChannel(
      'plugin.libraryphonenumber',
      const StandardMethodCodec(),
      registrar.messenger,
    );
    final ShortNumberInfoPlugin instance = ShortNumberInfoPlugin();
    ShortNumberInfoPlatform.instance = instance;
    methodChannel.setMethodCallHandler(instance.handleMethodCall);
  }

  Future<dynamic> handleMethodCall(MethodCall call) async {
    switch (call.method) {
      default:
        throw PlatformException(
            code: 'Unimplemented',
            details: "The libphonenumber plugin for web doesn't implement "
                "the method '${call.method}'");
    }
  }

  @override
  Future<bool> connectsToEmergencyNumber(
      String number, String regionCode) async {
    return jsImpl.connectsToEmergencyNumber(number, regionCode);
  }

  @override
  Future<String> getExampleShortNumber(String regionCode) async {
    return jsImpl.getExampleShortNumber(regionCode);
  }

  @override
  Future<String> getExampleShortNumberForCost(
      String regionCode, ShortNumberCost cost) async {
    int index = cost.index;
    return jsImpl.getExampleShortNumberForCost(regionCode, index);
  }

  @override
  Future<ShortNumberCost> getExpectedCost(PhoneNumberPlatform number) async {
    PhoneNumberJsImpl numberJsImpl = (number as PhoneNumberPlugin).jsImpl;
    int index = jsImpl.getExpectedCost(numberJsImpl);

    return ShortNumberCostUtil.getType(index);
  }

  @override
  Future<ShortNumberCost> getExpectedCostForRegion(
      PhoneNumberPlatform number, String regionDialingFrom) async {
    PhoneNumberJsImpl numberJsImpl = (number as PhoneNumberPlugin).jsImpl;
    int index =
        jsImpl.getExpectedCostForRegion(numberJsImpl, regionDialingFrom);

    return ShortNumberCostUtil.getType(index);
  }

  @override
  Future<void> getInstance() async {
    jsImpl = ShortNumberInfoJsImpl.getInstance();
    return;
  }

  @override
  Future<List<String>> getSupportedRegions() async {
    return jsImpl.getSupportedRegions();
  }

  @override
  Future<bool> isCarrierSpecific(PhoneNumberPlatform number) async {
    PhoneNumberJsImpl numberJsImpl = (number as PhoneNumberPlugin).jsImpl;

    return jsImpl.isCarrierSpecific(numberJsImpl);
  }

  @override
  Future<bool> isCarrierSpecificForRegion(
      PhoneNumberPlatform number, String regionDialingFrom) async {
    PhoneNumberJsImpl numberJsImpl = (number as PhoneNumberPlugin).jsImpl;

    return jsImpl.isCarrierSpecificForRegion(numberJsImpl, regionDialingFrom);
  }

  @override
  Future<bool> isEmergencyNumber(String number, String regionCode) async {
    return jsImpl.isEmergencyNumber(number, regionCode);
  }

  @override
  Future<bool> isPossibleShortNumber(PhoneNumberPlatform number) async {
    PhoneNumberJsImpl numberJsImpl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.isPossibleShortNumber(numberJsImpl);
  }

  @override
  Future<bool> isPossibleShortNumberForRegion(
      PhoneNumberPlatform number, String regionDialingFrom) async {
    PhoneNumberJsImpl numberJsImpl = (number as PhoneNumberPlugin).jsImpl;

    return jsImpl.isPossibleShortNumberForRegion(
        numberJsImpl, regionDialingFrom);
  }

  @override
  Future<bool> isSmsServiceForRegion(
      PhoneNumberPlatform number, String regionDialingFrom) async {
    PhoneNumberJsImpl numberJsImpl = (number as PhoneNumberPlugin).jsImpl;

    return jsImpl.isSmsServiceForRegion(numberJsImpl, regionDialingFrom);
  }

  @override
  Future<bool> isValidShortNumber(PhoneNumberPlatform number) async {
    PhoneNumberJsImpl numberJsImpl = (number as PhoneNumberPlugin).jsImpl;

    return jsImpl.isValidShortNumber(numberJsImpl);
  }

  @override
  Future<bool> isValidShortNumberForRegion(
      PhoneNumberPlatform number, String regionDialingFrom) async {
    PhoneNumberJsImpl numberJsImpl = (number as PhoneNumberPlugin).jsImpl;

    return jsImpl.isValidShortNumberForRegion(numberJsImpl, regionDialingFrom);
  }
}
