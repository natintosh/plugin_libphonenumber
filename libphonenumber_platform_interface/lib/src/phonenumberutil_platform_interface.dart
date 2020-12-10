import 'package:libphonenumber_platform_interface/src/phonemetadata_platform_interface.dart';
import 'package:libphonenumber_platform_interface/src/phonenumber_platform_interface.dart';
import 'package:libphonenumber_platform_interface/src/method_channel/phonenumberutil_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class PhoneNumberUtilPlatform extends PlatformInterface {
  PhoneNumberUtilPlatform() : super(token: _token);

  static final Object _token = Object();

  static PhoneNumberUtilPlatform _instance = MethodChannelPhoneNumberUtil();

  static PhoneNumberUtilPlatform get instance => _instance;

  static set instance(PhoneNumberUtilPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> getInstance() async {
    throw UnimplementedError('getInstance() has not been implemented.');
  }

  Future<String> extractPossibleNumber(String number) async {
    throw UnimplementedError(
        'extractPossibleNumber() has not been implemented.');
  }

  Future<bool> isViablePhoneNumber(String number) async {
    throw UnimplementedError('isViablePhoneNumber() has not been implemented.');
  }

  Future<String> normalize(String number) async {
    throw UnimplementedError('normalize() has not been implemented.');
  }

  Future<String> normalizeDigitsOnly(String number) async {
    throw UnimplementedError('normalizeDigitsOnly() has not been implemented.');
  }

  Future<String> normalizeDiallableCharsOnly(String number) async {
    throw UnimplementedError(
        'normalizeDiallableCharsOnly() has not been implemented.');
  }

  Future<String> convertAlphaCharactersInNumber(String number) async {
    throw UnimplementedError(
        'convertAlphaCharactersInNumber() has not been implemented.');
  }

  Future<int> getLengthOfGeographicalAreaCode(
      PhoneNumberPlatform number) async {
    throw UnimplementedError(
        'getLengthOfGeographicalAreaCode() has not been implemented.');
  }

  Future<int> getLengthOfNationalDestinationCode(
      PhoneNumberPlatform number) async {
    throw UnimplementedError(
        'getLengthOfNationalDestinationCode() has not been implemented.');
  }

  Future<String> getCountryMobileToken(int countryCallingCode) async {
    throw UnimplementedError(
        'getCountryMobileToken() has not been implemented.');
  }

  Future<List<String>> getSupportedRegions() async {
    throw UnimplementedError('getSupportedRegions() has not been implemented.');
  }

  Future<List<int>> getSupportedGlobalNetworkCallingCodes() async {
    throw UnimplementedError(
        'getSupportedGlobalNetworkCallingCodes() has not been implemented.');
  }

  Future<List<int>> getSupportedCallingCodes() async {
    throw UnimplementedError(
        'getSupportedCallingCodes() has not been implemented.');
  }

  Future<List<int>> getSupportedTypesForRegion(String regionCode) async {
    throw UnimplementedError(
        'getSupportedTypesForRegion() has not been implemented.');
  }

  Future<List<int>> getSupportedTypesForNonGeoEntity(String regionCode) async {
    throw UnimplementedError(
        'getSupportedTypesForNonGeoEntity() has not been implemented.');
  }

  Future<bool> formattingRuleHasFirstGroupOnly(
      String nationalPrefixFormattingRule) async {
    throw UnimplementedError(
        'formattingRuleHasFirstGroupOnly() has not been implemented.');
  }

  Future<bool> isNumberGeographical(PhoneNumberPlatform number) async {
    throw UnimplementedError(
        'isNumberGeographical() has not been implemented.');
  }

  Future<String> format(PhoneNumberPlatform number, int numberFormat) async {
    throw UnimplementedError('format() has not been implemented.');
  }

  Future<String> formatByPattern(PhoneNumberPlatform number, int numberFormat,
      NumberFormatPlatform userDefineFormat) async {
    throw UnimplementedError('formatByPattern() has not been implemented.');
  }

  Future<String> formatNationalNumberWithCarrierCode(
      PhoneNumberPlatform number, String carrierCode) async {
    throw UnimplementedError(
        'formatNationalNumberWithCarrierCode() has not been implemented.');
  }

  Future<String> formatNationalNumberWithPreferredCarrierCode(
      PhoneNumberPlatform number, String fallbackCarrierCode) async {
    throw UnimplementedError(
        'formatNationalNumberWithPreferredCarrierCode() has not been implemented.');
  }

  Future<String> formatNumberForMobileDialing(PhoneNumberPlatform number,
      String regionCallingFrom, bool withFormatting) async {
    throw UnimplementedError(
        'formatNumberForMobileDialing() has not been implemented.');
  }

  Future<String> formatOutOfCountryCallingNumber(
      PhoneNumberPlatform number, String regionCallingFrom) async {
    throw UnimplementedError(
        'formatOutOfCountryCallingNumber() has not been implemented.');
  }

  Future<String> formatInOriginalFormat(
      PhoneNumberPlatform number, String regionCallingFrom) async {
    throw UnimplementedError(
        'formatInOriginalFormat() has not been implemented.');
  }

  Future<String> formatOutOfCountryKeepingAlphaChars(
      PhoneNumberPlatform number, String regionCallingFrom) async {
    throw UnimplementedError(
        'formatOutOfCountryKeepingAlphaChars() has not been implemented.');
  }

  Future<String> getNationalSignificantNumber(
      PhoneNumberPlatform number) async {
    throw UnimplementedError(
        'getNationalSignificantNumber() has not been implemented.');
  }

  Future<PhoneNumberPlatform> getExampleNumber(String regionCode) async {
    throw UnimplementedError('getExampleNumber() has not been implemented.');
  }

  Future<PhoneNumberPlatform> getExampleNumberForType(
      String regionCode, int type) async {
    throw UnimplementedError(
        'getExampleNumberForType() has not been implemented.');
  }

  Future<PhoneNumberPlatform> getExampleNumberForNonGeoEntity(
      int countryCallingCode) async {
    throw UnimplementedError(
        'getExampleNumberForNonGeoEntity() has not been implemented.');
  }

  Future<int> getNumberType(PhoneNumberPlatform number) async {
    throw UnimplementedError('getNumberType() has not been implemented.');
  }

  Future<PhoneMetadataPlatform> getMetadataForRegion(String regionCode) async {
    throw UnimplementedError(
        'getMetadataForRegion() has not been implemented.');
  }

  Future<PhoneMetadataPlatform> getMetadataForNonGeographicalRegion(
      int countryCallingCode) async {
    throw UnimplementedError(
        'getMetadataForNonGeographicalRegion() has not been implemented.');
  }

  Future<bool> isValidNumber(PhoneNumberPlatform number) async {
    throw UnimplementedError('isValidNumber() has not been implemented.');
  }

  Future<bool> isValidNumberForRegion(
      PhoneNumberPlatform number, String regionCode) async {
    throw UnimplementedError(
        'isValidNumberForRegion() has not been implemented.');
  }

  Future<String> getRegionCodeForNumber(PhoneNumberPlatform number) async {
    throw UnimplementedError(
        'getRegionCodeForNumber() has not been implemented.');
  }

  Future<String> getRegionCodeForCountryCode(int countryCallingCode) async {
    throw UnimplementedError(
        'getRegionCodeForCountryCode() has not been implemented.');
  }

  Future<int> getCountryCodeForRegion(String regionCode) async {
    throw UnimplementedError(
        'getCountryCodeForRegion() has not been implemented.');
  }

  Future<String> getNddPrefixForRegion(
      String regionCode, bool stripeNonDigits) async {
    throw UnimplementedError(
        'getNddPrefixForRegion() has not been implemented.');
  }

  Future<bool> isNANPACountry(String regionCode) async {
    throw UnimplementedError('isNANPACountry() has not been implemented.');
  }

  Future<bool> isAlphaNumber(String number) async {
    throw UnimplementedError('isAlphaNumber() has not been implemented.');
  }

  Future<bool> isPossibleNumber(PhoneNumberPlatform number) async {
    throw UnimplementedError('isPossibleNumber() has not been implemented.');
  }

  Future<bool> isPossibleNumberForType(
      PhoneNumberPlatform number, int type) async {
    throw UnimplementedError(
        'isPossibleNumberForType() has not been implemented.');
  }

  Future<bool> isPossibleNumberWithReason(PhoneNumberPlatform number) async {
    throw UnimplementedError(
        'isPossibleNumberWithReason() has not been implemented.');
  }

  Future<bool> isPossibleNumberForTypeWithReason(
      PhoneNumberPlatform number, int type) async {
    throw UnimplementedError(
        'isPossibleNumberForTypeWithReason() has not been implemented.');
  }

  Future<bool> isPossibleNumberString(
      String number, String regionDialiingFrom) async {
    throw UnimplementedError(
        'isPossibleNumberString() has not been implemented.');
  }

  Future<bool> truncateTooLongNumber(PhoneNumberPlatform number) async {
    throw UnimplementedError(
        'truncateTooLongNumber() has not been implemented.');
  }

  Future<int> extractCountryCode(
      String fullNumber, String nationalNumber) async {
    throw UnimplementedError('extractCountryCode() has not been implemented.');
  }

  Future<int> maybeExtractCountryCode(
      String number,
      PhoneMetadataPlatform defaultRegionMetadata,
      String nationalNumber,
      bool keepRawInput,
      PhoneNumberPlatform phoneNumber) async {
    throw UnimplementedError(
        'maybeExtractCountryCode() has not been implemented.');
  }

  Future<int> maybeStripInternationalPrefixAndNormalize(
      String number, String possibleIddPrefix) async {
    throw UnimplementedError('clear() has not been implemented.');
  }

  Future<bool> maybeStripNationalPrefixAndCarrierCode(
      String number, PhoneMetadataPlatform metadata, String carrierCode) async {
    throw UnimplementedError(
        'maybeStripNationalPrefixAndCarrierCode() has not been implemented.');
  }

  Future<String> maybeStripExtension(String number) async {
    throw UnimplementedError('maybeStripExtension() has not been implemented.');
  }

  Future<PhoneNumberPlatform> parse(
      String numberToParse, String defaultRegion) async {
    throw UnimplementedError('parse() has not been implemented.');
  }

  Future<PhoneNumberPlatform> parseAndKeepRawInput(
      String numberToParse, String defaultRegion) async {
    throw UnimplementedError(
        'parseAndKeepRawInput() has not been implemented.');
  }

  Future<int> isNumberMatch(String firstNumberIn, String secondNumberIn) async {
    throw UnimplementedError('isNumberMatch() has not been implemented.');
  }

  Future<int> isPhoneNumberMatch(PhoneNumberPlatform firstNumberIn,
      PhoneNumberPlatform secondNumberIn) async {
    throw UnimplementedError('isPhoneNumberMatch() has not been implemented.');
  }

  Future<bool> canBeInternationallyDialled(PhoneNumberPlatform number) async {
    throw UnimplementedError(
        'canBeInternationallyDialled() has not been implemented.');
  }

  Future<bool> matchesEntirely(String regex, String str) async {
    throw UnimplementedError('matchesEntirely() has not been implemented.');
  }

  Future<bool> matchesPrefix(String regex, String str) async {
    throw UnimplementedError('matchesPrefix() has not been implemented.');
  }
}
