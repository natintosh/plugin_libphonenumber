import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:libphonenumber_platform_interface/libraryphonenumber_platform_interface.dart';
import 'package:libphonenumber_web/src/interop/libphonenumber_interop.dart';
import 'package:libphonenumber_web/src/interop/utils/stringbuffer.dart';
import 'package:libphonenumber_web/src/phonemetadata_plugin.dart';
import 'package:libphonenumber_web/src/phonenumber_plugin.dart';

class PhoneNumberUtilPlugin implements PhoneNumberUtilPlatform {
  PhoneNumberUtilJsImpl jsImpl;

  static void registerWith(Registrar registrar) {
    final MethodChannel methodChannel = MethodChannel(
      'plugin.libraryphonenumber',
      const StandardMethodCodec(),
      registrar.messenger,
    );
    final PhoneNumberUtilPlugin instance = PhoneNumberUtilPlugin()
      ..getInstance();
    PhoneNumberUtilPlatform.instance = instance;
    methodChannel.setMethodCallHandler(instance.handleMethodCall);
  }

  Future<dynamic> handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'canBeInternationallyDialled':
        final PhoneNumberPlatform number = call.arguments['number'];
        return canBeInternationallyDialled(number);
        break;
      case 'convertAlphaCharactersInNumber':
        final String number = call.arguments['number'];
        return convertAlphaCharactersInNumber(number);
        break;
      case 'convertAlphaCharactersInNumber':
        final String number = call.arguments['number'];
        return convertAlphaCharactersInNumber(number);
        break;
      case 'extractCountryCode':
        final String fullNumber = call.arguments['fullNumber'];
        final String nationalNumber = call.arguments['nationalNumber'];
        return extractCountryCode(fullNumber, nationalNumber);
        break;
      case 'format':
        final PhoneNumberPlatform number = call.arguments['number'];
        final int numberFormat = call.arguments['numberFormat'];
        return format(number, numberFormat);
        break;
      case 'formatByPattern':
        PhoneNumberPlatform number = call.arguments['number'];
        int numberFormat = call.arguments['numberFormat'];
        NumberFormatPlatform userDefineFormat =
            call.arguments['userDefineFormat'];
        return formatByPattern(number, numberFormat, userDefineFormat);
        break;
      case 'formatInOriginalFormat':
        PhoneNumberPlatform number = call.arguments['number'];
        String regionCallingFrom = call.arguments['regionCallingFrom'];
        return formatInOriginalFormat(number, regionCallingFrom);
        break;
      default:
        throw PlatformException(
            code: 'Unimplemented',
            details: "The libphonenumber plugin for web doesn't implement "
                "the method '${call.method}'");
    }
  }

  @override
  Future<bool> canBeInternationallyDialled(PhoneNumberPlatform number) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.canBeInternationallyDialled(impl);
  }

  @override
  Future<String> convertAlphaCharactersInNumber(String number) async {
    return jsImpl.convertAlphaCharactersInNumber(number);
  }

  @override
  Future<int> extractCountryCode(
      String fullNumber, String nationalNumber) async {
    StringBufferJsImpl arg1 = StringBufferJsImpl(fullNumber);
    StringBufferJsImpl arg2 = StringBufferJsImpl(nationalNumber);
    return jsImpl.extractCountryCode(arg1, arg2);
  }

  @override
  Future<String> extractPossibleNumber(String number) async {
    return jsImpl.extractPossibleNumber(number);
  }

  @override
  Future<String> format(PhoneNumberPlatform number, int numberFormat) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.format(impl, numberFormat);
  }

  @override
  Future<String> formatByPattern(PhoneNumberPlatform number, int numberFormat,
      NumberFormatPlatform userDefineFormat) async {
    PhoneNumberJsImpl impl1 = (number as PhoneNumberPlugin).jsImpl;
    NumberFormatJsImpl impl2 = (number as NumberFormatPlugin).jsImpl;

    return jsImpl.formatByPattern(impl1, numberFormat, impl2);
  }

  @override
  Future<String> formatInOriginalFormat(
      PhoneNumberPlatform number, String regionCallingFrom) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.formatInOriginalFormat(impl, regionCallingFrom);
  }

  @override
  Future<String> formatNationalNumberWithCarrierCode(
      PhoneNumberPlatform number, String carrierCode) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.formatNationalNumberWithCarrierCode(impl, carrierCode);
  }

  @override
  Future<String> formatNationalNumberWithPreferredCarrierCode(
      PhoneNumberPlatform number, String fallbackCarrierCode) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.formatNationalNumberWithPreferredCarrierCode(
        impl, fallbackCarrierCode);
  }

  @override
  Future<String> formatNumberForMobileDialing(PhoneNumberPlatform number,
      String regionCallingFrom, bool withFormatting) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.formatNumberForMobileDialing(
        impl, regionCallingFrom, withFormatting);
  }

  @override
  Future<String> formatOutOfCountryCallingNumber(
      PhoneNumberPlatform number, String regionCallingFrom) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.formatOutOfCountryCallingNumber(impl, regionCallingFrom);
  }

  @override
  Future<String> formatOutOfCountryKeepingAlphaChars(
      PhoneNumberPlatform number, String regionCallingFrom) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.formatOutOfCountryKeepingAlphaChars(impl, regionCallingFrom);
  }

  @override
  Future<bool> formattingRuleHasFirstGroupOnly(
      String nationalPrefixFormattingRule) async {
    return jsImpl.formattingRuleHasFirstGroupOnly(nationalPrefixFormattingRule);
  }

  @override
  Future<int> getCountryCodeForRegion(String regionCode) async {
    return jsImpl.getCountryCodeForRegion(regionCode);
  }

  @override
  Future<String> getCountryMobileToken(int countryCallingCode) async {
    return jsImpl.getCountryMobileToken(countryCallingCode);
  }

  @override
  Future<PhoneNumberPlatform> getExampleNumber(String regionCode) async {
    PhoneNumberJsImpl impl = jsImpl.getExampleNumber(regionCode);
    return PhoneNumberPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberPlatform> getExampleNumberForNonGeoEntity(
      int countryCallingCode) async {
    PhoneNumberJsImpl impl =
        jsImpl.getExampleNumberForNonGeoEntity(countryCallingCode);
    return PhoneNumberPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberPlatform> getExampleNumberForType(
      String regionCode, int type) async {
    PhoneNumberJsImpl impl = jsImpl.getExampleNumberForType(regionCode, type);
    return PhoneNumberPlugin()..jsImpl = impl;
  }

  @override
  Future<void> getInstance() async {
    jsImpl = PhoneNumberUtilJsImpl.getInstance();
    return;
  }

  @override
  Future<int> getLengthOfGeographicalAreaCode(
      PhoneNumberPlatform number) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.getLengthOfGeographicalAreaCode(impl);
  }

  @override
  Future<int> getLengthOfNationalDestinationCode(
      PhoneNumberPlatform number) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.getLengthOfNationalDestinationCode(impl);
  }

  @override
  Future<PhoneMetadataPlatform> getMetadataForNonGeographicalRegion(
      int countryCallingCode) async {
    PhoneMetadataJsImpl impl =
        jsImpl.getMetadataForNonGeographicalRegion(countryCallingCode);
    return PhoneMetadataPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneMetadataPlatform> getMetadataForRegion(String regionCode) async {
    PhoneMetadataJsImpl impl = jsImpl.getMetadataForRegion(regionCode);
    return PhoneMetadataPlugin()..jsImpl = impl;
  }

  @override
  Future<String> getNationalSignificantNumber(
      PhoneNumberPlatform number) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.getNationalSignificantNumber(impl);
  }

  @override
  Future<String> getNddPrefixForRegion(
      String regionCode, bool stripeNonDigits) async {
    return jsImpl.getNddPrefixForRegion(regionCode, stripeNonDigits);
  }

  @override
  Future<int> getNumberType(PhoneNumberPlatform number) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.getNumberType(impl);
  }

  @override
  Future<String> getRegionCodeForCountryCode(int countryCallingCode) async {
    return jsImpl.getRegionCodeForCountryCode(countryCallingCode);
  }

  @override
  Future<String> getRegionCodeForNumber(PhoneNumberPlatform number) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.getRegionCodeForNumber(impl);
  }

  @override
  Future<List<int>> getSupportedCallingCodes() async {
    List<int> list = jsImpl.getSupportedCallingCodes();
    return list;
  }

  @override
  Future<List<int>> getSupportedGlobalNetworkCallingCodes() async {
    List<int> list = jsImpl.getSupportedGlobalNetworkCallingCodes();
    return list;
  }

  @override
  Future<List<String>> getSupportedRegions() async {
    List<String> list = jsImpl.getSupportedRegions();
    return list;
  }

  @override
  Future<List<int>> getSupportedTypesForNonGeoEntity(String regionCode) async {
    List<int> list = jsImpl.getSupportedTypesForNonGeoEntity(regionCode);
    return list;
  }

  @override
  Future<List<int>> getSupportedTypesForRegion(String regionCode) async {
    List<int> list = jsImpl.getSupportedTypesForRegion(regionCode);
    return list;
  }

  @override
  Future<bool> isAlphaNumber(String number) async {
    return jsImpl.isAlphaNumber(number);
  }

  @override
  Future<bool> isNANPACountry(String regionCode) async {
    return jsImpl.isNANPACountry(regionCode);
  }

  @override
  Future<bool> isNumberGeographical(PhoneNumberPlatform number) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.isNumberGeographical(impl);
  }

  @override
  Future<int> isNumberMatch(String firstNumberIn, String secondNumberIn) async {
    return jsImpl.isNumberMatch(firstNumberIn, secondNumberIn);
  }

  @override
  Future<int> isPhoneNumberMatch(PhoneNumberPlatform firstNumberIn,
      PhoneNumberPlatform secondNumberIn) async {
    PhoneNumberJsImpl impl1 = (firstNumberIn as PhoneNumberPlugin).jsImpl;
    PhoneNumberJsImpl impl2 = (secondNumberIn as PhoneNumberPlugin).jsImpl;
    return jsImpl.isPhoneNumberMatch(impl1, impl2);
  }

  @override
  Future<bool> isPossibleNumber(PhoneNumberPlatform number) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.isPossibleNumber(impl);
  }

  @override
  Future<bool> isPossibleNumberForType(
      PhoneNumberPlatform number, int type) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.isPossibleNumberForType(impl, type);
  }

  @override
  Future<bool> isPossibleNumberForTypeWithReason(
      PhoneNumberPlatform number, int type) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.isPossibleNumberForTypeWithReason(impl, type);
  }

  @override
  Future<bool> isPossibleNumberString(
      String number, String regionDialiingFrom) async {
    return jsImpl.isPossibleNumberString(number, regionDialiingFrom);
  }

  @override
  Future<bool> isPossibleNumberWithReason(PhoneNumberPlatform number) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.isPossibleNumberWithReason(impl);
  }

  @override
  Future<bool> isValidNumber(PhoneNumberPlatform number) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.isValidNumber(impl);
  }

  @override
  Future<bool> isValidNumberForRegion(
      PhoneNumberPlatform number, String regionCode) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.isValidNumberForRegion(impl, regionCode);
  }

  @override
  Future<bool> isViablePhoneNumber(String number) async {
    return jsImpl.isViablePhoneNumber(number);
  }

  @override
  Future<bool> matchesEntirely(String regex, String str) async {
    return jsImpl.matchesEntirely(regex, str);
  }

  @override
  Future<bool> matchesPrefix(String regex, String str) async {
    return jsImpl.matchesPrefix(regex, str);
  }

  @override
  Future<int> maybeExtractCountryCode(
      String number,
      PhoneMetadataPlatform defaultRegionMetadata,
      String nationalNumber,
      bool keepRawInput,
      PhoneNumberPlatform phoneNumber) async {
    PhoneMetadataJsImpl impl1 =
        (defaultRegionMetadata as PhoneMetadataPlugin).jsImpl;
    StringBufferJsImpl arg1 = StringBufferJsImpl(nationalNumber);
    PhoneNumberJsImpl impl2 = (phoneNumber as PhoneNumberPlugin).jsImpl;

    return jsImpl.maybeExtractCountryCode(
        number, impl1, arg1, keepRawInput, impl2);
  }

  @override
  Future<String> maybeStripExtension(String number) async {
    StringBufferJsImpl arg1 = StringBufferJsImpl(number);
    return jsImpl.maybeStripExtension(arg1);
  }

  @override
  Future<int> maybeStripInternationalPrefixAndNormalize(
      String number, String possibleIddPrefix) async {
    StringBufferJsImpl arg1 = StringBufferJsImpl(number);
    return jsImpl.maybeStripInternationalPrefixAndNormalize(
        arg1, possibleIddPrefix);
  }

  @override
  Future<bool> maybeStripNationalPrefixAndCarrierCode(
      String number, PhoneMetadataPlatform metadata, String carrierCode) async {
    StringBufferJsImpl arg1 = StringBufferJsImpl(number);
    PhoneMetadataJsImpl impl1 = (metadata as PhoneMetadataPlugin).jsImpl;
    StringBufferJsImpl arg2 = StringBufferJsImpl(carrierCode);

    return jsImpl.maybeStripNationalPrefixAndCarrierCode(arg1, impl1, arg2);
  }

  @override
  Future<String> normalize(String number) async {
    return jsImpl.normalize(number);
  }

  @override
  Future<String> normalizeDiallableCharsOnly(String number) async {
    return jsImpl.normalizeDiallableCharsOnly(number);
  }

  @override
  Future<String> normalizeDigitsOnly(String number) async {
    return jsImpl.normalizeDigitsOnly(number);
  }

  @override
  Future<PhoneNumberPlatform> parse(
      String numberToParse, String defaultRegion) async {
    PhoneNumberJsImpl impl = jsImpl.parse(numberToParse, defaultRegion);
    return PhoneNumberPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberPlatform> parseAndKeepRawInput(
      String numberToParse, String defaultRegion) async {
    PhoneNumberJsImpl impl =
        jsImpl.parseAndKeepRawInput(numberToParse, defaultRegion);
    return PhoneNumberPlugin()..jsImpl = impl;
  }

  @override
  Future<bool> truncateTooLongNumber(PhoneNumberPlatform number) async {
    PhoneNumberJsImpl impl = (number as PhoneNumberPlugin).jsImpl;
    return jsImpl.truncateTooLongNumber(impl);
  }
}
