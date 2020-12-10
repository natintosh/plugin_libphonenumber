import 'package:libphonenumber_platform_interface/src/method_channel/phonemetadata_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class NumberFormatPlatform extends PlatformInterface {
  NumberFormatPlatform() : super(token: _token);

  static final Object _token = Object();

  static NumberFormatPlatform _instance = MethodChannelNumberFormat();

  static NumberFormatPlatform get instance => _instance;

  static set instance(NumberFormatPlatform intance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String> getPattern() async {
    throw UnimplementedError('getPattern() has not been implemented.');
  }

  Future<String> getPatternOrDefault() async {
    throw UnimplementedError('getPatternOrDefault() has not been implemented.');
  }

  Future<void> setPattern(String value) async {
    throw UnimplementedError('setPattern() has not been implemented.');
  }

  Future<bool> hasPattern() async {
    throw UnimplementedError('hasPattern() has not been implemented.');
  }

  Future<int> patternCount() async {
    throw UnimplementedError('patternCount() has not been implemented.');
  }

  Future<void> clearPattern() async {
    throw UnimplementedError('clearPattern() has not been implemented.');
  }

  Future<String> getFormat() async {
    throw UnimplementedError('getFormat() has not been implemented.');
  }

  Future<String> getFormatOrDefault() async {
    throw UnimplementedError('getFormatOrDefault() has not been implemented.');
  }

  Future<void> setFormat(String value) async {
    throw UnimplementedError('setFormat() has not been implemented.');
  }

  Future<bool> hasFormat() async {
    throw UnimplementedError('hasFormat() has not been implemented.');
  }

  Future<int> formatCount() async {
    throw UnimplementedError('formatCount() has not been implemented.');
  }

  Future<void> clearFormat() async {
    throw UnimplementedError('clearFormat() has not been implemented.');
  }

  Future<String> getLeadingDigitsPattern(int index) async {
    throw UnimplementedError(
        'getLeadingDigitsPattern() has not been implemented.');
  }

  Future<void> addLeadingDigitsPattern(String value) async {
    throw UnimplementedError(
        'addLeadingDigitsPattern() has not been implemented.');
  }

  Future<List<String>> leadingDigitsPatternArray() async {
    throw UnimplementedError(
        'leadingDigitsPatternArray() has not been implemented.');
  }

  Future<bool> hasLeadingDigitsPattern() async {
    throw UnimplementedError(
        'hasLeadingDigitsPattern() has not been implemented.');
  }

  Future<int> leadingDigitsPatternCount() async {
    throw UnimplementedError(
        'leadingDigitsPatternCount() has not been implemented.');
  }

  Future<void> clearLeadingDigitsPattern() async {
    throw UnimplementedError(
        'clearLeadingDigitsPattern() has not been implemented.');
  }

  Future<String> getNationalPrefixFormattingRule() async {
    throw UnimplementedError(
        'getNationalPrefixFormattingRule() has not been implemented.');
  }

  Future<String> getNationalPrefixFormattingRuleOrDefault() async {
    throw UnimplementedError(
        'getNationalPrefixFormattingRuleOrDefault() has not been implemented.');
  }

  Future<void> setNationalPrefixFormattingRule(String value) async {
    throw UnimplementedError(
        'setNationalPrefixFormattingRule() has not been implemented.');
  }

  Future<bool> hasNationalPrefixFormattingRule() async {
    throw UnimplementedError(
        'hasNationalPrefixFormattingRule() has not been implemented.');
  }

  Future<int> nationalPrefixFormattingRuleCount() async {
    throw UnimplementedError(
        'nationalPrefixFormattingRuleCount() has not been implemented.');
  }

  Future<void> clearNationalPrefixFormattingRule() async {
    throw UnimplementedError(
        'clearNationalPrefixFormattingRule() has not been implemented.');
  }

  Future<bool> getNationalPrefixOptionalWhenFormatting() async {
    throw UnimplementedError(
        'getNationalPrefixOptionalWhenFormatting() has not been implemented.');
  }

  Future<bool> getNationalPrefixOptionalWhenFormattingOrDefault() async {
    throw UnimplementedError(
        'getNationalPrefixOptionalWhenFormattingOrDefault() has not been implemented.');
  }

  Future<void> setNationalPrefixOptionalWhenFormatting(bool value) async {
    throw UnimplementedError(
        'setNationalPrefixOptionalWhenFormatting() has not been implemented.');
  }

  Future<bool> hasNationalPrefixOptionalWhenFormatting() async {
    throw UnimplementedError(
        'hasNationalPrefixOptionalWhenFormatting() has not been implemented.');
  }

  Future<int> nationalPrefixOptionalWhenFormattingCount() async {
    throw UnimplementedError(
        'nationalPrefixOptionalWhenFormattingCount() has not been implemented.');
  }

  Future<void> clearNationalPrefixOptionalWhenFormatting() async {
    throw UnimplementedError(
        'clearNationalPrefixOptionalWhenFormatting() has not been implemented.');
  }

  Future<String> getDomesticCarrierCodeFormattingRule() async {
    throw UnimplementedError(
        'getDomesticCarrierCodeFormattingRule() has not been implemented.');
  }

  Future<String> getDomesticCarrierCodeFormattingRuleOrDefault() async {
    throw UnimplementedError(
        'getDomesticCarrierCodeFormattingRuleOrDefault() has not been implemented.');
  }

  Future<void> setDomesticCarrierCodeFormattingRule(String value) async {
    throw UnimplementedError(
        'setDomesticCarrierCodeFormattingRule() has not been implemented.');
  }

  Future<bool> hasDomesticCarrierCodeFormattingRule() async {
    throw UnimplementedError(
        'hasDomesticCarrierCodeFormattingRule() has not been implemented.');
  }

  Future<int> domesticCarrierCodeFormattingRuleCount() async {
    throw UnimplementedError(
        'domesticCarrierCodeFormattingRuleCount() has not been implemented.');
  }

  Future<void> clearDomesticCarrierCodeFormattingRule() async {
    throw UnimplementedError(
        'clearDomesticCarrierCodeFormattingRule() has not been implemented.');
  }
}

abstract class PhoneNumberDescPlatform extends PlatformInterface {
  PhoneNumberDescPlatform() : super(token: _token);

  static final Object _token = Object();

  static PhoneNumberDescPlatform _instance = MethodChannelPhoneNumberDesc();

  static PhoneNumberDescPlatform get instance => _instance;

  static set instance(PhoneNumberDescPlatform intance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String> getNationalNumberPattern() async {
    throw UnimplementedError(
        'getNationalNumberPattern() has not been implemented.');
  }

  Future<String> getNationalNumberPatternOrDefault() async {
    throw UnimplementedError(
        'getNationalNumberPatternOrDefault() has not been implemented.');
  }

  Future<void> setNationalNumberPattern(String value) async {
    throw UnimplementedError(
        'setNationalNumberPattern() has not been implemented.');
  }

  Future<bool> hasNationalNumberPattern() async {
    throw UnimplementedError(
        'hasNationalNumberPattern() has not been implemented.');
  }

  Future<int> nationalNumberPatternCount() async {
    throw UnimplementedError(
        'nationalNumberPatternCount() has not been implemented.');
  }

  Future<void> clearNationalNumberPattern() async {
    throw UnimplementedError(
        'clearNationalNumberPattern() has not been implemented.');
  }

  Future<int> getPossibleLength(int index) async {
    throw UnimplementedError('getPossibleLength() has not been implemented.');
  }

  Future<int> getPossibleLengthOrDefault(int index) async {
    throw UnimplementedError(
        'getPossibleLengthOrDefault() has not been implemented.');
  }

  Future<void> addPossibleLength(int value) async {
    throw UnimplementedError('addPossibleLength() has not been implemented.');
  }

  Future<List<int>> possibleLengthArray() async {
    throw UnimplementedError('possibleLengthArray() has not been implemented.');
  }

  Future<bool> hasPossibleLength() async {
    throw UnimplementedError('hasPossibleLength() has not been implemented.');
  }

  Future<int> possibleLengthCount() async {
    throw UnimplementedError('possibleLengthCount() has not been implemented.');
  }

  Future<void> clearPossibleLength() async {
    throw UnimplementedError('clearPossibleLength() has not been implemented.');
  }

  Future<int> getPossibleLengthLocalOnly(int index) async {
    throw UnimplementedError(
        'getPossibleLengthLocalOnly() has not been implemented.');
  }

  Future<int> getPossibleLengthLocalOnlyOrDefault(int index) async {
    throw UnimplementedError(
        'getPossibleLengthLocalOnlyOrDefault() has not been implemented.');
  }

  Future<void> addPossibleLengthLocalOnly(int value) async {
    throw UnimplementedError(
        'addPossibleLengthLocalOnly() has not been implemented.');
  }

  Future<List<int>> possibleLengthLocalOnlyArray() async {
    throw UnimplementedError(
        'possibleLengthLocalOnlyArray() has not been implemented.');
  }

  Future<bool> hasPossibleLengthLocalOnly() async {
    throw UnimplementedError(
        'hasPossibleLengthLocalOnly() has not been implemented.');
  }

  Future<int> possibleLengthLocalOnlyCount() async {
    throw UnimplementedError(
        'possibleLengthLocalOnlyCount() has not been implemented.');
  }

  Future<void> clearPossibleLengthLocalOnly() async {
    throw UnimplementedError(
        'clearPossibleLengthLocalOnly() has not been implemented.');
  }

  Future<String> getExampleNumber() async {
    throw UnimplementedError('getExampleNumber() has not been implemented.');
  }

  Future<String> getExampleNumberOrDefault() async {
    throw UnimplementedError(
        'getExampleNumberOrDefault() has not been implemented.');
  }

  Future<void> setExampleNumber(String value) async {
    throw UnimplementedError('setExampleNumber() has not been implemented.');
  }

  Future<bool> hasExampleNumber() async {
    throw UnimplementedError('hasExampleNumber() has not been implemented.');
  }

  Future<int> exampleNumberCount() async {
    throw UnimplementedError('exampleNumberCount() has not been implemented.');
  }

  Future<void> clearExampleNumber() async {
    throw UnimplementedError('clearExampleNumber() has not been implemented.');
  }
}

abstract class PhoneMetadataPlatform extends PlatformInterface {
  PhoneMetadataPlatform() : super(token: _token);

  static final Object _token = Object();

  static PhoneMetadataPlatform _instance = MethodChannelPhoneMetadata();

  static PhoneMetadataPlatform get instance => _instance;

  static set instance(PhoneMetadataPlatform intance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<PhoneNumberDescPlatform> getGeneralDesc() async {
    throw UnimplementedError('getGeneralDesc() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getGeneralDescOrDefault() async {
    throw UnimplementedError(
        'getGeneralDescOrDefault() has not been implemented.');
  }

  Future<void> setGeneralDesc(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setGeneralDesc() has not been implemented.');
  }

  Future<bool> hasGeneralDesc() async {
    throw UnimplementedError('hasGeneralDesc() has not been implemented.');
  }

  Future<int> generalDescCount() async {
    throw UnimplementedError('generalDescCount() has not been implemented.');
  }

  Future<void> clearGeneralDesc() async {
    throw UnimplementedError('clearGeneralDesc() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getFixedLine() async {
    throw UnimplementedError('getFixedLine() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getFixedLineOrDefault() async {
    throw UnimplementedError(
        'getFixedLineOrDefault() has not been implemented.');
  }

  Future<void> setFixedLine(PhoneNumberDescPlatform value) async {
    throw UnimplementedError(
        'PhoneNumberDescPlatform() has not been implemented.');
  }

  Future<bool> hasFixedLine() async {
    throw UnimplementedError('hasFixedLine() has not been implemented.');
  }

  Future<int> fixedLineCount() async {
    throw UnimplementedError('fixedLineCount() has not been implemented.');
  }

  Future<void> clearFixedLine() async {
    throw UnimplementedError('clearFixedLine() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getMobile() async {
    throw UnimplementedError('getMobile() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getMobileOrDefault() async {
    throw UnimplementedError('getMobileOrDefault() has not been implemented.');
  }

  Future<void> setMobile(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setMobile() has not been implemented.');
  }

  Future<bool> hasMobile() async {
    throw UnimplementedError('hasMobile() has not been implemented.');
  }

  Future<int> mobileCount() async {
    throw UnimplementedError('mobileCount() has not been implemented.');
  }

  Future<void> clearMobile() async {
    throw UnimplementedError('clearMobile() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getTollFree() async {
    throw UnimplementedError('getTollFree() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getTollFreeOrDefault() async {
    throw UnimplementedError(
        'getTollFreeOrDefault() has not been implemented.');
  }

  Future<void> setTollFree(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setTollFree() has not been implemented.');
  }

  Future<bool> hasTollFree() async {
    throw UnimplementedError('hasTollFree() has not been implemented.');
  }

  Future<int> tollFreeCount() async {
    throw UnimplementedError('tollFreeCount() has not been implemented.');
  }

  Future<void> clearTollFree() async {
    throw UnimplementedError('clearTollFree() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getPremiumRate() async {
    throw UnimplementedError('getPremiumRate() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getPremiumRateOrDefault() async {
    throw UnimplementedError(
        'getPremiumRateOrDefault() has not been implemented.');
  }

  Future<void> setPremiumRate(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setPremiumRate() has not been implemented.');
  }

  Future<bool> hasPremiumRate() async {
    throw UnimplementedError('hasPremiumRate() has not been implemented.');
  }

  Future<int> premiumRateCount() async {
    throw UnimplementedError('premiumRateCount() has not been implemented.');
  }

  Future<void> clearPremiumRate() async {
    throw UnimplementedError('clearPremiumRate() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getSharedCost() async {
    throw UnimplementedError('getSharedCost() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getSharedCostOrDefault() async {
    throw UnimplementedError(
        'getSharedCostOrDefault() has not been implemented.');
  }

  Future<void> setSharedCost(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setSharedCost() has not been implemented.');
  }

  Future<bool> hasSharedCost() async {
    throw UnimplementedError('hasSharedCost() has not been implemented.');
  }

  Future<int> sharedCostCount() async {
    throw UnimplementedError('sharedCostCount() has not been implemented.');
  }

  Future<void> clearSharedCost() async {
    throw UnimplementedError('clearSharedCost() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getPersonalNumber() async {
    throw UnimplementedError('getPersonalNumber() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getPersonalNumberOrDefault() async {
    throw UnimplementedError(
        'getPersonalNumberOrDefault() has not been implemented.');
  }

  Future<void> setPersonalNumber(PhoneNumberDescPlatform value) async {
    throw UnimplementedError(
        'PhoneNumberDescPlatform() has not been implemented.');
  }

  Future<bool> hasPersonalNumber() async {
    throw UnimplementedError('hasPersonalNumber() has not been implemented.');
  }

  Future<int> personalNumberCount() async {
    throw UnimplementedError('personalNumberCount() has not been implemented.');
  }

  Future<void> clearPersonalNumber() async {
    throw UnimplementedError('clearPersonalNumber() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getVoip() async {
    throw UnimplementedError('getVoip() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getVoipOrDefault() async {
    throw UnimplementedError('getVoipOrDefault() has not been implemented.');
  }

  Future<void> setVoip(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setVoip() has not been implemented.');
  }

  Future<bool> hasVoip() async {
    throw UnimplementedError('hasVoip() has not been implemented.');
  }

  Future<int> voipCount() async {
    throw UnimplementedError('voipCount() has not been implemented.');
  }

  Future<void> clearVoip() async {
    throw UnimplementedError('clearVoip() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getPager() async {
    throw UnimplementedError('getPager() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getPagerOrDefault() async {
    throw UnimplementedError('getPagerOrDefault() has not been implemented.');
  }

  Future<void> setPager(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setPager() has not been implemented.');
  }

  Future<bool> hasPager() async {
    throw UnimplementedError('hasPager() has not been implemented.');
  }

  Future<int> pagerCount() async {
    throw UnimplementedError('pagerCount() has not been implemented.');
  }

  Future<void> clearPager() async {
    throw UnimplementedError('clearPager() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getUan() async {
    throw UnimplementedError('getUan() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getUanOrDefault() async {
    throw UnimplementedError('getUanOrDefault() has not been implemented.');
  }

  Future<void> setUan(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setUan() has not been implemented.');
  }

  Future<bool> hasUan() async {
    throw UnimplementedError('hasUan() has not been implemented.');
  }

  Future<int> uanCount() async {
    throw UnimplementedError('uanCount() has not been implemented.');
  }

  Future<void> clearUan() async {
    throw UnimplementedError('clearUan() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getEmergency() async {
    throw UnimplementedError('getEmergency() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getEmergencyOrDefault() async {
    throw UnimplementedError(
        'getEmergencyOrDefault() has not been implemented.');
  }

  Future<void> setEmergency(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setEmergency() has not been implemented.');
  }

  Future<bool> hasEmergency() async {
    throw UnimplementedError('hasEmergency() has not been implemented.');
  }

  Future<int> emergencyCount() async {
    throw UnimplementedError('emergencyCount() has not been implemented.');
  }

  Future<void> clearEmergency() async {
    throw UnimplementedError('clearEmergency() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getVoicemail() async {
    throw UnimplementedError('getVoicemail() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getVoicemailOrDefault() async {
    throw UnimplementedError(
        'getVoicemailOrDefault() has not been implemented.');
  }

  Future<void> setVoicemail(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setVoicemail() has not been implemented.');
  }

  Future<bool> hasVoicemail() async {
    throw UnimplementedError('hasVoicemail() has not been implemented.');
  }

  Future<int> voicemailCount() async {
    throw UnimplementedError('voicemailCount() has not been implemented.');
  }

  Future<void> clearVoicemail() async {
    throw UnimplementedError('clearVoicemail() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getShortCode() async {
    throw UnimplementedError('getShortCode() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getShortCodeOrDefault() async {
    throw UnimplementedError(
        'getShortCodeOrDefault() has not been implemented.');
  }

  Future<void> setShortCode(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setShortCode() has not been implemented.');
  }

  Future<bool> hasShortCode() async {
    throw UnimplementedError('hasShortCode() has not been implemented.');
  }

  Future<int> shortCodeCount() async {
    throw UnimplementedError('shortCodeCount() has not been implemented.');
  }

  Future<void> clearShortCode() async {
    throw UnimplementedError('clearShortCode() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getStandardRate() async {
    throw UnimplementedError('getStandardRate() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getStandardRateOrDefault() async {
    throw UnimplementedError(
        'getStandardRateOrDefault() has not been implemented.');
  }

  Future<void> setStandardRate(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setStandardRate() has not been implemented.');
  }

  Future<bool> hasStandardRate() async {
    throw UnimplementedError('hasStandardRate() has not been implemented.');
  }

  Future<int> standardRateCount() async {
    throw UnimplementedError('standardRateCount() has not been implemented.');
  }

  Future<void> clearStandardRate() async {
    throw UnimplementedError('clearStandardRate() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getCarrierSpecific() async {
    throw UnimplementedError('getCarrierSpecific() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getCarrierSpecificOrDefault() async {
    throw UnimplementedError(
        'getCarrierSpecificOrDefault() has not been implemented.');
  }

  Future<void> setCarrierSpecific(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setCarrierSpecific() has not been implemented.');
  }

  Future<bool> hasCarrierSpecific() async {
    throw UnimplementedError('hasCarrierSpecific() has not been implemented.');
  }

  Future<int> carrierSpecificCount() async {
    throw UnimplementedError(
        'carrierSpecificCount() has not been implemented.');
  }

  Future<void> clearCarrierSpecific() async {
    throw UnimplementedError(
        'clearCarrierSpecific() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getSmsServices() async {
    throw UnimplementedError('getSmsServices() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getSmsServicesOrDefault() async {
    throw UnimplementedError(
        'getSmsServicesOrDefault() has not been implemented.');
  }

  Future<void> setSmsServices(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setSmsServices() has not been implemented.');
  }

  Future<bool> hasSmsServices() async {
    throw UnimplementedError('hasSmsServices() has not been implemented.');
  }

  Future<int> smsServicesCount() async {
    throw UnimplementedError('smsServicesCount() has not been implemented.');
  }

  Future<void> clearSmsServices() async {
    throw UnimplementedError('clearSmsServices() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getNoInternationalDialling() async {
    throw UnimplementedError(
        'getNoInternationalDialling() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getNoInternationalDiallingOrDefault() async {
    throw UnimplementedError(
        'getNoInternationalDiallingOrDefault() has not been implemented.');
  }

  Future<void> setNoInternationalDialling(PhoneNumberDescPlatform value) async {
    throw UnimplementedError(
        'setNoInternationalDialling() has not been implemented.');
  }

  Future<bool> hasNoInternationalDialling() async {
    throw UnimplementedError(
        'hasNoInternationalDialling() has not been implemented.');
  }

  Future<int> noInternationalDiallingCount() async {
    throw UnimplementedError('clearExampleNumber() has not been implemented.');
  }

  Future<void> clearNoInternationalDialling() async {
    throw UnimplementedError(
        'clearNoInternationalDialling() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getId() async {
    throw UnimplementedError('getId() has not been implemented.');
  }

  Future<PhoneNumberDescPlatform> getIdOrDefault() async {
    throw UnimplementedError('getIdOrDefault() has not been implemented.');
  }

  Future<void> setId(PhoneNumberDescPlatform value) async {
    throw UnimplementedError('setId() has not been implemented.');
  }

  Future<bool> hasId() async {
    throw UnimplementedError('hasId() has not been implemented.');
  }

  Future<int> idCount() async {
    throw UnimplementedError('idCount() has not been implemented.');
  }

  Future<void> clearId() async {
    throw UnimplementedError('clearId() has not been implemented.');
  }

  Future<int> getCountryCode() async {
    throw UnimplementedError('getCountryCode() has not been implemented.');
  }

  Future<int> getCountryCodeOrDefault() async {
    throw UnimplementedError(
        'getCountryCodeOrDefault() has not been implemented.');
  }

  Future<void> setCountryCode(int value) async {
    throw UnimplementedError('setCountryCode() has not been implemented.');
  }

  Future<bool> hasCountryCode() async {
    throw UnimplementedError('hasCountryCode() has not been implemented.');
  }

  Future<int> countryCodeCount() async {
    throw UnimplementedError('countryCodeCount() has not been implemented.');
  }

  Future<void> clearCountryCode() async {
    throw UnimplementedError('clearExampleNumber() has not been implemented.');
  }

  Future<String> getInternationalPrefix() async {
    throw UnimplementedError(
        'getInternationalPrefix() has not been implemented.');
  }

  Future<String> getInternationalPrefixOrDefault() async {
    throw UnimplementedError(
        'getInternationalPrefixOrDefault() has not been implemented.');
  }

  Future<void> setInternationalPrefix(String value) async {
    throw UnimplementedError(
        'setInternationalPrefix() has not been implemented.');
  }

  Future<bool> hasInternationalPrefix() async {
    throw UnimplementedError(
        'hasInternationalPrefix() has not been implemented.');
  }

  Future<int> internationalPrefixCount() async {
    throw UnimplementedError(
        'internationalPrefixCount() has not been implemented.');
  }

  Future<void> clearInternationalPrefix() async {
    throw UnimplementedError(
        'clearInternationalPrefix() has not been implemented.');
  }

  Future<String> getPreferredInternationalPrefix() async {
    throw UnimplementedError(
        'getPreferredInternationalPrefix() has not been implemented.');
  }

  Future<String> getPreferredInternationalPrefixOrDefault() async {
    throw UnimplementedError(
        'getPreferredInternationalPrefixOrDefault() has not been implemented.');
  }

  Future<void> setPreferredInternationalPrefix(String value) async {
    throw UnimplementedError(
        'setPreferredInternationalPrefix() has not been implemented.');
  }

  Future<bool> hasPreferredInternationalPrefix() async {
    throw UnimplementedError(
        'hasPreferredInternationalPrefix() has not been implemented.');
  }

  Future<int> preferredInternationalPrefixCount() async {
    throw UnimplementedError(
        'preferredInternationalPrefixCount() has not been implemented.');
  }

  Future<void> clearPreferredInternationalPrefix() async {
    throw UnimplementedError(
        'clearPreferredInternationalPrefix() has not been implemented.');
  }

  Future<String> getNationalPrefix() async {
    throw UnimplementedError('getNationalPrefix() has not been implemented.');
  }

  Future<String> getNationalPrefixOrDefault() async {
    throw UnimplementedError(
        'getNationalPrefixOrDefault() has not been implemented.');
  }

  Future<void> setNationalPrefix(String value) async {
    throw UnimplementedError('setNationalPrefix() has not been implemented.');
  }

  Future<bool> hasNationalPrefix() async {
    throw UnimplementedError('hasNationalPrefix() has not been implemented.');
  }

  Future<int> nationalPrefixCount() async {
    throw UnimplementedError('nationalPrefixCount() has not been implemented.');
  }

  Future<void> clearNationalPrefix() async {
    throw UnimplementedError('clearNationalPrefix() has not been implemented.');
  }

  Future<String> getPreferredExtnPrefix() async {
    throw UnimplementedError(
        'getPreferredExtnPrefix() has not been implemented.');
  }

  Future<String> getPreferredExtnPrefixOrDefault() async {
    throw UnimplementedError(
        'getPreferredExtnPrefixOrDefault() has not been implemented.');
  }

  Future<void> setPreferredExtnPrefix(String value) async {
    throw UnimplementedError(
        'setPreferredExtnPrefix() has not been implemented.');
  }

  Future<bool> hasPreferredExtnPrefix() async {
    throw UnimplementedError(
        'hasPreferredExtnPrefix() has not been implemented.');
  }

  Future<int> preferredExtnPrefixCount() async {
    throw UnimplementedError(
        'preferredExtnPrefixCount() has not been implemented.');
  }

  Future<void> clearPreferredExtnPrefix() async {
    throw UnimplementedError(
        'clearPreferredExtnPrefix() has not been implemented.');
  }

  Future<String> getNationalPrefixForParsing() async {
    throw UnimplementedError(
        'getNationalPrefixForParsing() has not been implemented.');
  }

  Future<String> getNationalPrefixForParsingOrDefault() async {
    throw UnimplementedError(
        'getNationalPrefixForParsingOrDefault() has not been implemented.');
  }

  Future<void> setNationalPrefixForParsing(String value) async {
    throw UnimplementedError(
        'setNationalPrefixForParsing() has not been implemented.');
  }

  Future<bool> hasNationalPrefixForParsing() async {
    throw UnimplementedError(
        'hasNationalPrefixForParsing() has not been implemented.');
  }

  Future<int> nationalPrefixForParsingCount() async {
    throw UnimplementedError(
        'nationalPrefixForParsingCount() has not been implemented.');
  }

  Future<void> clearNationalPrefixForParsing() async {
    throw UnimplementedError(
        'clearNationalPrefixForParsing() has not been implemented.');
  }

  Future<String> getNationalPrefixTransformRule() async {
    throw UnimplementedError(
        'getNationalPrefixTransformRule() has not been implemented.');
  }

  Future<String> getNationalPrefixTransformRuleOrDefault() async {
    throw UnimplementedError(
        'getNationalPrefixTransformRuleOrDefault() has not been implemented.');
  }

  Future<void> setNationalPrefixTransformRule(String value) async {
    throw UnimplementedError(
        'setNationalPrefixTransformRule() has not been implemented.');
  }

  Future<bool> hasNationalPrefixTransformRule() async {
    throw UnimplementedError(
        'hasNationalPrefixTransformRule() has not been implemented.');
  }

  Future<int> nationalPrefixTransformRuleCount() async {
    throw UnimplementedError(
        'nationalPrefixTransformRuleCount() has not been implemented.');
  }

  Future<void> clearNationalPrefixTransformRule() async {
    throw UnimplementedError(
        'clearNationalPrefixTransformRule() has not been implemented.');
  }

  Future<String> getSameMobileAndFixedLinePattern() async {
    throw UnimplementedError(
        'getSameMobileAndFixedLinePattern() has not been implemented.');
  }

  Future<String> getSameMobileAndFixedLinePatternOrDefault() async {
    throw UnimplementedError(
        'getSameMobileAndFixedLinePatternOrDefault() has not been implemented.');
  }

  Future<void> setSameMobileAndFixedLinePattern(String value) async {
    throw UnimplementedError(
        'setSameMobileAndFixedLinePattern() has not been implemented.');
  }

  Future<bool> hasSameMobileAndFixedLinePattern() async {
    throw UnimplementedError(
        'hasSameMobileAndFixedLinePattern() has not been implemented.');
  }

  Future<int> sameMobileAndFixedLinePatternCount() async {
    throw UnimplementedError(
        'sameMobileAndFixedLinePatternCount() has not been implemented.');
  }

  Future<void> clearSameMobileAndFixedLinePattern() async {
    throw UnimplementedError(
        'clearSameMobileAndFixedLinePattern() has not been implemented.');
  }

  Future<int> getNumberFormat(NumberFormatPlatform index) async {
    throw UnimplementedError('getNumberFormat() has not been implemented.');
  }

  Future<int> getNumberFormatOrDefault(NumberFormatPlatform index) async {
    throw UnimplementedError(
        'getNumberFormatOrDefault() has not been implemented.');
  }

  Future<void> addNumberFormat(NumberFormatPlatform value) async {
    throw UnimplementedError('addNumberFormat() has not been implemented.');
  }

  Future<List<NumberFormatPlatform>> numberFormatArray() async {
    throw UnimplementedError('numberFormatArray() has not been implemented.');
  }

  Future<bool> hasNumberFormat() async {
    throw UnimplementedError('hasNumberFormat() has not been implemented.');
  }

  Future<int> numberFormatCount() async {
    throw UnimplementedError('numberFormatCount() has not been implemented.');
  }

  Future<void> clearNumberFormat() async {
    throw UnimplementedError('clearNumberFormat() has not been implemented.');
  }

  Future<int> getIntlNumberFormat(NumberFormatPlatform index) async {
    throw UnimplementedError('getIntlNumberFormat() has not been implemented.');
  }

  Future<int> getIntlNumberFormatOrDefault(NumberFormatPlatform index) async {
    throw UnimplementedError(
        'getIntlNumberFormatOrDefault() has not been implemented.');
  }

  Future<void> addIntlNumberFormat(NumberFormatPlatform value) async {
    throw UnimplementedError('addIntlNumberFormat() has not been implemented.');
  }

  Future<List<NumberFormatPlatform>> intlNumberFormatArray() async {
    throw UnimplementedError(
        'intlNumberFormatArray() has not been implemented.');
  }

  Future<bool> hasIntlNumberFormat() async {
    throw UnimplementedError('hasIntlNumberFormat() has not been implemented.');
  }

  Future<int> intlNumberFormatCount() async {
    throw UnimplementedError(
        'intlNumberFormatCount() has not been implemented.');
  }

  Future<void> clearIntlNumberFormat() async {
    throw UnimplementedError(
        'clearIntlNumberFormat() has not been implemented.');
  }

  Future<bool> getMainCountryForCode() async {
    throw UnimplementedError(
        'getMainCountryForCode() has not been implemented.');
  }

  Future<bool> getMainCountryForCodeOrDefault() async {
    throw UnimplementedError(
        'getMainCountryForCodeOrDefault() has not been implemented.');
  }

  Future<void> setMainCountryForCode(bool value) async {
    throw UnimplementedError(
        'setMainCountryForCode() has not been implemented.');
  }

  Future<bool> hasMainCountryForCode() async {
    throw UnimplementedError(
        'hasMainCountryForCode() has not been implemented.');
  }

  Future<int> mainCountryForCodeCount() async {
    throw UnimplementedError(
        'mainCountryForCodeCount() has not been implemented.');
  }

  Future<void> clearMainCountryForCode() async {
    throw UnimplementedError(
        'clearMainCountryForCode() has not been implemented.');
  }

  Future<String> getLeadingDigits() async {
    throw UnimplementedError('getLeadingDigits() has not been implemented.');
  }

  Future<String> getLeadingDigitsOrDefault() async {
    throw UnimplementedError(
        'getLeadingDigitsOrDefault() has not been implemented.');
  }

  Future<void> setLeadingDigits(String value) async {
    throw UnimplementedError('setLeadingDigits() has not been implemented.');
  }

  Future<bool> hasLeadingDigits() async {
    throw UnimplementedError('hasLeadingDigits() has not been implemented.');
  }

  Future<int> leadingDigitsCount() async {
    throw UnimplementedError('leadingDigitsCount() has not been implemented.');
  }

  Future<void> clearLeadingDigits() async {
    throw UnimplementedError('clearLeadingDigits() has not been implemented.');
  }

  Future<bool> getLeadingZeroPossible() async {
    throw UnimplementedError(
        'getLeadingZeroPossible() has not been implemented.');
  }

  Future<bool> getLeadingZeroPossibleOrDefault() async {
    throw UnimplementedError(
        'getLeadingZeroPossibleOrDefault() has not been implemented.');
  }

  Future<void> setLeadingZeroPossible(bool value) async {
    throw UnimplementedError(
        'setLeadingZeroPossible() has not been implemented.');
  }

  Future<bool> hasLeadingZeroPossible() async {
    throw UnimplementedError(
        'hasLeadingZeroPossible() has not been implemented.');
  }

  Future<int> leadingZeroPossibleCount() async {
    throw UnimplementedError(
        'leadingZeroPossibleCount() has not been implemented.');
  }

  Future<void> clearLeadingZeroPossible() async {
    throw UnimplementedError(
        'clearLeadingZeroPossible() has not been implemented.');
  }
}

abstract class PhoneMetadataCollectionPlatform extends PlatformInterface {
  PhoneMetadataCollectionPlatform() : super(token: _token);

  static final Object _token = Object();

  static PhoneMetadataCollectionPlatform _instance =
      MethodChannelPhoneMetadataCollection();

  static PhoneMetadataCollectionPlatform get instance => _instance;

  static set instance(PhoneMetadataCollectionPlatform intance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<PhoneMetadataPlatform> getMetadata(int index) async {
    throw UnimplementedError(
        'clearLeadingZeroPossible() has not been implemented.');
  }

  Future<PhoneMetadataPlatform> getLeadingZeroPossibleOrDefault(
      int index) async {
    throw UnimplementedError(
        'clearLeadingZeroPossible() has not been implemented.');
  }

  Future<void> addMetadata(PhoneMetadataPlatform value) async {
    throw UnimplementedError(
        'clearLeadingZeroPossible() has not been implemented.');
  }

  Future<List<PhoneMetadataPlatform>> metadataArray() async {
    throw UnimplementedError(
        'clearLeadingZeroPossible() has not been implemented.');
  }

  Future<bool> hasMetadata() async {
    throw UnimplementedError(
        'clearLeadingZeroPossible() has not been implemented.');
  }

  Future<int> metadataCount() async {
    throw UnimplementedError(
        'clearLeadingZeroPossible() has not been implemented.');
  }

  Future<void> clearMetadata() async {
    throw UnimplementedError(
        'clearLeadingZeroPossible() has not been implemented.');
  }
}
