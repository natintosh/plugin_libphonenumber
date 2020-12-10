import 'package:libphonenumber_platform_interface/libraryphonenumber_platform_interface.dart';
import 'package:libphonenumber_platform_interface/src/method_channel/shortnumberinfo_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class ShortNumberInfoPlatform extends PlatformInterface {
  ShortNumberInfoPlatform() : super(token: _token);

  static final Object _token = Object();

  static ShortNumberInfoPlatform _instance = MethodChannelShortNumberInfo();

  static ShortNumberInfoPlatform get instance => _instance;

  static set instance(ShortNumberInfoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> getInstance() async {
    throw UnimplementedError('getInstance() has not been implemented.');
  }

  Future<bool> isPossibleShortNumberForRegion(
      PhoneNumberPlatform number, String regionDialingFrom) async {
    throw UnimplementedError(
        'isPossibleShortNumberForRegion() has not been implemented.');
  }

  Future<bool> isPossibleShortNumber(PhoneNumberPlatform number) async {
    throw UnimplementedError(
        'isPossibleShortNumber() has not been implemented.');
  }

  Future<bool> isValidShortNumberForRegion(
      PhoneNumberPlatform number, String regionDialingFrom) async {
    throw UnimplementedError(
        'isValidShortNumberForRegion() has not been implemented.');
  }

  Future<bool> isValidShortNumber(PhoneNumberPlatform number) async {
    throw UnimplementedError('isValidShortNumber() has not been implemented.');
  }

  Future<ShortNumberCost> getExpectedCostForRegion(
      PhoneNumberPlatform number, String regionDialingFrom) async {
    throw UnimplementedError(
        'getExpectedCostForRegion() has not been implemented.');
  }

  Future<ShortNumberCost> getExpectedCost(PhoneNumberPlatform number) async {
    throw UnimplementedError('getExpectedCost() has not been implemented.');
  }

  Future<List<String>> getSupportedRegions() async {
    throw UnimplementedError('getSupportedRegions() has not been implemented.');
  }

  Future<String> getExampleShortNumber(String regionCode) async {
    throw UnimplementedError(
        'getExampleShortNumber() has not been implemented.');
  }

  Future<String> getExampleShortNumberForCost(
      String regionCode, ShortNumberCost cost) async {
    throw UnimplementedError(
        'getExampleShortNumberForCost() has not been implemented.');
  }

  Future<bool> connectsToEmergencyNumber(
      String number, String regionCode) async {
    throw UnimplementedError(
        'connectsToEmergencyNumber() has not been implemented.');
  }

  Future<bool> isEmergencyNumber(String number, String regionCode) async {
    throw UnimplementedError('isEmergencyNumber() has not been implemented.');
  }

  Future<bool> isCarrierSpecific(PhoneNumberPlatform number) async {
    throw UnimplementedError('isCarrierSpecific() has not been implemented.');
  }

  Future<bool> isCarrierSpecificForRegion(
      PhoneNumberPlatform number, String regionDialingFrom) async {
    throw UnimplementedError(
        'isCarrierSpecificForRegion() has not been implemented.');
  }

  Future<bool> isSmsServiceForRegion(
      PhoneNumberPlatform number, String regionDialingFrom) async {
    throw UnimplementedError(
        'isSmsServiceForRegion() has not been implemented.');
  }
}
