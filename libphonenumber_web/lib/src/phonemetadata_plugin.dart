import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:libphonenumber_platform_interface/libraryphonenumber_platform_interface.dart';
import 'package:libphonenumber_web/src/interop/libphonenumber_interop.dart';

class NumberFormatPlugin implements NumberFormatPlatform {
  NumberFormatJsImpl jsImpl;

  static void registerWith(Registrar registrar) {
    final MethodChannel methodChannel = MethodChannel(
      'plugin.libraryphonenumber',
      const StandardMethodCodec(),
      registrar.messenger,
    );
    final NumberFormatPlugin instance = NumberFormatPlugin();
    NumberFormatPlatform.instance = instance;
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
  Future<void> addLeadingDigitsPattern(String value) async {
    return jsImpl.addLeadingDigitsPattern(value);
  }

  @override
  Future<void> clearDomesticCarrierCodeFormattingRule() async {
    return jsImpl.clearDomesticCarrierCodeFormattingRule();
  }

  @override
  Future<void> clearFormat() async {
    return jsImpl.clearFormat();
  }

  @override
  Future<void> clearLeadingDigitsPattern() async {
    return jsImpl.clearLeadingDigitsPattern();
  }

  @override
  Future<void> clearNationalPrefixFormattingRule() async {
    return jsImpl.clearNationalPrefixFormattingRule();
  }

  @override
  Future<void> clearNationalPrefixOptionalWhenFormatting() async {
    return jsImpl.clearNationalPrefixOptionalWhenFormatting();
  }

  @override
  Future<void> clearPattern() async {
    return jsImpl.clearPattern();
  }

  @override
  Future<int> domesticCarrierCodeFormattingRuleCount() async {
    return jsImpl.domesticCarrierCodeFormattingRuleCount();
  }

  @override
  Future<int> formatCount() async {
    return jsImpl.formatCount();
  }

  @override
  Future<String> getDomesticCarrierCodeFormattingRule() async {
    return jsImpl.getDomesticCarrierCodeFormattingRule();
  }

  @override
  Future<String> getDomesticCarrierCodeFormattingRuleOrDefault() async {
    return jsImpl.getDomesticCarrierCodeFormattingRuleOrDefault();
  }

  @override
  Future<String> getFormat() async {
    return jsImpl.getFormat();
  }

  @override
  Future<String> getFormatOrDefault() async {
    return jsImpl.getFormatOrDefault();
  }

  @override
  Future<String> getLeadingDigitsPattern(int index) async {
    return jsImpl.getLeadingDigitsPattern(index);
  }

  @override
  Future<String> getNationalPrefixFormattingRule() async {
    return jsImpl.getNationalPrefixFormattingRule();
  }

  @override
  Future<String> getNationalPrefixFormattingRuleOrDefault() async {
    return jsImpl.getNationalPrefixFormattingRuleOrDefault();
  }

  @override
  Future<bool> getNationalPrefixOptionalWhenFormatting() async {
    return jsImpl.getNationalPrefixOptionalWhenFormatting();
  }

  @override
  Future<bool> getNationalPrefixOptionalWhenFormattingOrDefault() async {
    return jsImpl.getNationalPrefixOptionalWhenFormattingOrDefault();
  }

  @override
  Future<String> getPattern() async {
    return jsImpl.getPattern();
  }

  @override
  Future<String> getPatternOrDefault() async {
    return jsImpl.getPatternOrDefault();
  }

  @override
  Future<bool> hasDomesticCarrierCodeFormattingRule() async {
    return jsImpl.hasDomesticCarrierCodeFormattingRule();
  }

  @override
  Future<bool> hasFormat() async {
    return jsImpl.hasFormat();
  }

  @override
  Future<bool> hasLeadingDigitsPattern() async {
    return jsImpl.hasLeadingDigitsPattern();
  }

  @override
  Future<bool> hasNationalPrefixFormattingRule() async {
    return jsImpl.hasNationalPrefixFormattingRule();
  }

  @override
  Future<bool> hasNationalPrefixOptionalWhenFormatting() async {
    return jsImpl.hasNationalPrefixOptionalWhenFormatting();
  }

  @override
  Future<bool> hasPattern() async {
    return jsImpl.hasPattern();
  }

  @override
  Future<List<String>> leadingDigitsPatternArray() async {
    return jsImpl.leadingDigitsPatternArray();
  }

  @override
  Future<int> leadingDigitsPatternCount() async {
    return jsImpl.leadingDigitsPatternCount();
  }

  @override
  Future<int> nationalPrefixFormattingRuleCount() async {
    return jsImpl.nationalPrefixFormattingRuleCount();
  }

  @override
  Future<int> nationalPrefixOptionalWhenFormattingCount() async {
    return jsImpl.nationalPrefixOptionalWhenFormattingCount();
  }

  @override
  Future<int> patternCount() async {
    return jsImpl.patternCount();
  }

  @override
  Future<void> setDomesticCarrierCodeFormattingRule(String value) async {
    return jsImpl.setDomesticCarrierCodeFormattingRule(value);
  }

  @override
  Future<void> setFormat(String value) async {
    return jsImpl.setDomesticCarrierCodeFormattingRule(value);
  }

  @override
  Future<void> setNationalPrefixFormattingRule(String value) async {
    return jsImpl.setNationalPrefixFormattingRule(value);
  }

  @override
  Future<void> setNationalPrefixOptionalWhenFormatting(bool value) async {
    return jsImpl.setNationalPrefixOptionalWhenFormatting(value);
  }

  @override
  Future<void> setPattern(String value) async {
    return jsImpl.setPattern(value);
  }
}

class PhoneNumberDescPlugin extends PhoneNumberDescPlatform {
  PhoneNumberDescJsImpl jsImpl;

  static void registerWith(Registrar registrar) {
    final MethodChannel methodChannel = MethodChannel(
      'plugin.libraryphonenumber',
      const StandardMethodCodec(),
      registrar.messenger,
    );
    final PhoneNumberDescPlugin instance = PhoneNumberDescPlugin();
    PhoneNumberDescPlatform.instance = instance;
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
  Future<void> addPossibleLength(int value) async {
    jsImpl.addPossibleLength(value);
  }

  @override
  Future<void> addPossibleLengthLocalOnly(int value) async {
    return jsImpl.addPossibleLengthLocalOnly(value);
  }

  @override
  Future<void> clearExampleNumber() async {
    return jsImpl.clearExampleNumber();
  }

  @override
  Future<void> clearNationalNumberPattern() async {
    return jsImpl.clearNationalNumberPattern();
  }

  @override
  Future<void> clearPossibleLength() async {
    return jsImpl.clearPossibleLength();
  }

  @override
  Future<void> clearPossibleLengthLocalOnly() async {
    return jsImpl.clearPossibleLengthLocalOnly();
  }

  @override
  Future<int> exampleNumberCount() async {
    return jsImpl.exampleNumberCount();
  }

  @override
  Future<String> getExampleNumber() async {
    return jsImpl.getExampleNumber();
  }

  @override
  Future<String> getExampleNumberOrDefault() async {
    return jsImpl.getExampleNumberOrDefault();
  }

  @override
  Future<String> getNationalNumberPattern() async {
    return jsImpl.getNationalNumberPattern();
  }

  @override
  Future<String> getNationalNumberPatternOrDefault() async {
    return jsImpl.getNationalNumberPatternOrDefault();
  }

  @override
  Future<int> getPossibleLength(int index) async {
    return jsImpl.getPossibleLength(index);
  }

  @override
  Future<int> getPossibleLengthLocalOnly(int index) async {
    return jsImpl.getPossibleLengthLocalOnly(index);
  }

  @override
  Future<int> getPossibleLengthLocalOnlyOrDefault(int index) async {
    return jsImpl.getPossibleLengthLocalOnlyOrDefault(index);
  }

  @override
  Future<int> getPossibleLengthOrDefault(int index) async {
    return jsImpl.getPossibleLengthOrDefault(index);
  }

  @override
  Future<bool> hasExampleNumber() async {
    return jsImpl.hasExampleNumber();
  }

  @override
  Future<bool> hasNationalNumberPattern() async {
    return jsImpl.hasNationalNumberPattern();
  }

  @override
  Future<bool> hasPossibleLength() async {
    return jsImpl.hasPossibleLength();
  }

  @override
  Future<bool> hasPossibleLengthLocalOnly() async {
    return jsImpl.hasPossibleLengthLocalOnly();
  }

  @override
  Future<int> nationalNumberPatternCount() async {
    return jsImpl.nationalNumberPatternCount();
  }

  @override
  Future<List<int>> possibleLengthArray() async {
    return jsImpl.possibleLengthArray();
  }

  @override
  Future<int> possibleLengthCount() async {
    return jsImpl.possibleLengthCount();
  }

  @override
  Future<List<int>> possibleLengthLocalOnlyArray() async {
    return jsImpl.possibleLengthLocalOnlyArray();
  }

  @override
  Future<int> possibleLengthLocalOnlyCount() async {
    return jsImpl.possibleLengthLocalOnlyCount();
  }

  @override
  Future<void> setExampleNumber(String value) async {
    return jsImpl.setExampleNumber(value);
  }

  @override
  Future<void> setNationalNumberPattern(String value) async {
    return jsImpl.setNationalNumberPattern(value);
  }
}

class PhoneMetadataPlugin implements PhoneMetadataPlatform {
  PhoneMetadataJsImpl jsImpl;

  static void registerWith(Registrar registrar) {
    final MethodChannel methodChannel = MethodChannel(
      'plugin.libraryphonenumber',
      const StandardMethodCodec(),
      registrar.messenger,
    );
    final PhoneNumberDescPlugin instance = PhoneNumberDescPlugin();
    PhoneNumberDescPlatform.instance = instance;
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
  Future<void> addIntlNumberFormat(NumberFormatPlatform value) async {
    NumberFormatJsImpl impl = (value as NumberFormatPlugin).jsImpl;
    return jsImpl.addIntlNumberFormat(impl);
  }

  @override
  Future<void> addNumberFormat(NumberFormatPlatform value) async {
    NumberFormatJsImpl impl = (value as NumberFormatPlugin).jsImpl;
    return jsImpl.addNumberFormat(impl);
  }

  @override
  Future<int> carrierSpecificCount() async {
    return jsImpl.carrierSpecificCount();
  }

  @override
  Future<void> clearCarrierSpecific() async {
    return jsImpl.clearCarrierSpecific();
  }

  @override
  Future<void> clearCountryCode() async {
    return jsImpl.clearCountryCode();
  }

  @override
  Future<void> clearEmergency() async {
    return jsImpl.clearEmergency();
  }

  @override
  Future<void> clearFixedLine() async {
    return jsImpl.clearFixedLine();
  }

  @override
  Future<void> clearGeneralDesc() async {
    return jsImpl.clearGeneralDesc();
  }

  @override
  Future<void> clearId() async {
    return jsImpl.clearId();
  }

  @override
  Future<void> clearInternationalPrefix() async {
    return jsImpl.clearInternationalPrefix();
  }

  @override
  Future<void> clearIntlNumberFormat() async {
    return jsImpl.clearIntlNumberFormat();
  }

  @override
  Future<void> clearLeadingDigits() async {
    return jsImpl.clearLeadingDigits();
  }

  @override
  Future<void> clearLeadingZeroPossible() async {
    return jsImpl.clearLeadingZeroPossible();
  }

  @override
  Future<void> clearMainCountryForCode() async {
    return jsImpl.clearMainCountryForCode();
  }

  @override
  Future<void> clearMobile() async {
    return jsImpl.clearMobile();
  }

  @override
  Future<void> clearNationalPrefix() async {
    return jsImpl.clearNationalPrefix();
  }

  @override
  Future<void> clearNationalPrefixForParsing() async {
    return jsImpl.clearNationalPrefixForParsing();
  }

  @override
  Future<void> clearNationalPrefixTransformRule() async {
    return jsImpl.clearNationalPrefixTransformRule();
  }

  @override
  Future<void> clearNoInternationalDialling() async {
    return jsImpl.clearNoInternationalDialling();
  }

  @override
  Future<void> clearNumberFormat() async {
    return jsImpl.clearNumberFormat();
  }

  @override
  Future<void> clearPager() async {
    return jsImpl.clearPager();
  }

  @override
  Future<void> clearPersonalNumber() async {
    return jsImpl.clearPersonalNumber();
  }

  @override
  Future<void> clearPreferredExtnPrefix() async {
    return jsImpl.clearPreferredExtnPrefix();
  }

  @override
  Future<void> clearPreferredInternationalPrefix() async {
    return jsImpl.clearPreferredInternationalPrefix();
  }

  @override
  Future<void> clearPremiumRate() async {
    return jsImpl.clearPremiumRate();
  }

  @override
  Future<void> clearSameMobileAndFixedLinePattern() async {
    return jsImpl.clearSameMobileAndFixedLinePattern();
  }

  @override
  Future<void> clearSharedCost() async {
    return jsImpl.clearSharedCost();
  }

  @override
  Future<void> clearShortCode() async {
    return jsImpl.clearShortCode();
  }

  @override
  Future<void> clearSmsServices() async {
    return jsImpl.clearSmsServices();
  }

  @override
  Future<void> clearStandardRate() async {
    return jsImpl.clearStandardRate();
  }

  @override
  Future<void> clearTollFree() async {
    return jsImpl.clearTollFree();
  }

  @override
  Future<void> clearUan() async {
    return jsImpl.clearUan();
  }

  @override
  Future<void> clearVoicemail() async {
    return jsImpl.clearVoicemail();
  }

  @override
  Future<void> clearVoip() async {
    return jsImpl.clearVoip();
  }

  @override
  Future<int> countryCodeCount() async {
    return jsImpl.countryCodeCount();
  }

  @override
  Future<int> emergencyCount() async {
    return jsImpl.emergencyCount();
  }

  @override
  Future<int> fixedLineCount() async {
    return jsImpl.fixedLineCount();
  }

  @override
  Future<int> generalDescCount() async {
    return jsImpl.generalDescCount();
  }

  @override
  Future<PhoneNumberDescPlatform> getCarrierSpecific() async {
    PhoneNumberDescJsImpl impl = jsImpl.getCarrierSpecific();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getCarrierSpecificOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getCarrierSpecificOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<int> getCountryCode() async {
    return jsImpl.getCountryCode();
  }

  @override
  Future<int> getCountryCodeOrDefault() async {
    return jsImpl.getCountryCodeOrDefault();
  }

  @override
  Future<PhoneNumberDescPlatform> getEmergency() async {
    PhoneNumberDescJsImpl impl = jsImpl.getEmergency();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getEmergencyOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getEmergencyOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getFixedLine() async {
    PhoneNumberDescJsImpl impl = jsImpl.getFixedLine();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getFixedLineOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getFixedLineOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getGeneralDesc() async {
    PhoneNumberDescJsImpl impl = jsImpl.getGeneralDesc();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getGeneralDescOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getGeneralDescOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getId() async {
    PhoneNumberDescJsImpl impl = jsImpl.getId();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getIdOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getIdOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<String> getInternationalPrefix() async {
    return jsImpl.getInternationalPrefix();
  }

  @override
  Future<String> getInternationalPrefixOrDefault() async {
    return jsImpl.getInternationalPrefixOrDefault();
  }

  @override
  Future<int> getIntlNumberFormat(NumberFormatPlatform index) async {
    NumberFormatJsImpl impl = (index as NumberFormatPlugin).jsImpl;
    return jsImpl.getIntlNumberFormat(impl);
  }

  @override
  Future<int> getIntlNumberFormatOrDefault(NumberFormatPlatform index) async {
    NumberFormatJsImpl impl = (index as NumberFormatPlugin).jsImpl;
    return jsImpl.getIntlNumberFormatOrDefault(impl);
  }

  @override
  Future<String> getLeadingDigits() async {
    return jsImpl.getLeadingDigits();
  }

  @override
  Future<String> getLeadingDigitsOrDefault() async {
    return jsImpl.getLeadingDigitsOrDefault();
  }

  @override
  Future<bool> getLeadingZeroPossible() async {
    return jsImpl.getLeadingZeroPossible();
  }

  @override
  Future<bool> getLeadingZeroPossibleOrDefault() async {
    return jsImpl.getLeadingZeroPossibleOrDefault();
  }

  @override
  Future<bool> getMainCountryForCode() async {
    return jsImpl.getMainCountryForCode();
  }

  @override
  Future<bool> getMainCountryForCodeOrDefault() async {
    return jsImpl.getMainCountryForCodeOrDefault();
  }

  @override
  Future<PhoneNumberDescPlatform> getMobile() async {
    PhoneNumberDescJsImpl impl = jsImpl.getMobile();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getMobileOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getMobileOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<String> getNationalPrefix() async {
    return jsImpl.getNationalPrefix();
  }

  @override
  Future<String> getNationalPrefixForParsing() async {
    return jsImpl.getNationalPrefixForParsing();
  }

  @override
  Future<String> getNationalPrefixForParsingOrDefault() async {
    return jsImpl.getNationalPrefixForParsingOrDefault();
  }

  @override
  Future<String> getNationalPrefixOrDefault() async {
    return jsImpl.getNationalPrefixOrDefault();
  }

  @override
  Future<String> getNationalPrefixTransformRule() async {
    return jsImpl.getNationalPrefixTransformRule();
  }

  @override
  Future<String> getNationalPrefixTransformRuleOrDefault() async {
    return jsImpl.getNationalPrefixTransformRuleOrDefault();
  }

  @override
  Future<PhoneNumberDescPlatform> getNoInternationalDialling() async {
    PhoneNumberDescJsImpl impl = jsImpl.getNoInternationalDialling();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getNoInternationalDiallingOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getNoInternationalDiallingOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<int> getNumberFormat(NumberFormatPlatform index) async {
    NumberFormatJsImpl impl = (index as NumberFormatPlugin).jsImpl;
    return jsImpl.getNumberFormat(impl);
  }

  @override
  Future<int> getNumberFormatOrDefault(NumberFormatPlatform index) async {
    NumberFormatJsImpl impl = (index as NumberFormatPlugin).jsImpl;
    return jsImpl.getNumberFormatOrDefault(impl);
  }

  @override
  Future<PhoneNumberDescPlatform> getPager() async {
    PhoneNumberDescJsImpl impl = jsImpl.getPager();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getPagerOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getPagerOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getPersonalNumber() async {
    PhoneNumberDescJsImpl impl = jsImpl.getPersonalNumber();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getPersonalNumberOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getPersonalNumberOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<String> getPreferredExtnPrefix() async {
    return jsImpl.getPreferredExtnPrefix();
  }

  @override
  Future<String> getPreferredExtnPrefixOrDefault() async {
    return jsImpl.getPreferredExtnPrefixOrDefault();
  }

  @override
  Future<String> getPreferredInternationalPrefix() async {
    return jsImpl.getPreferredInternationalPrefix();
  }

  @override
  Future<String> getPreferredInternationalPrefixOrDefault() async {
    return jsImpl.getPreferredInternationalPrefixOrDefault();
  }

  @override
  Future<PhoneNumberDescPlatform> getPremiumRate() async {
    PhoneNumberDescJsImpl impl = jsImpl.getPremiumRate();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getPremiumRateOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getPremiumRateOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<String> getSameMobileAndFixedLinePattern() async {
    return jsImpl.getSameMobileAndFixedLinePattern();
  }

  @override
  Future<String> getSameMobileAndFixedLinePatternOrDefault() async {
    return jsImpl.getSameMobileAndFixedLinePatternOrDefault();
  }

  @override
  Future<PhoneNumberDescPlatform> getSharedCost() async {
    PhoneNumberDescJsImpl impl = jsImpl.getSharedCost();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getSharedCostOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getSharedCostOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getShortCode() async {
    PhoneNumberDescJsImpl impl = jsImpl.getShortCode();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getShortCodeOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getShortCodeOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getSmsServices() async {
    PhoneNumberDescJsImpl impl = jsImpl.getSmsServices();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getSmsServicesOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getSmsServicesOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getStandardRate() async {
    PhoneNumberDescJsImpl impl = jsImpl.getStandardRate();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getStandardRateOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getStandardRateOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getTollFree() async {
    PhoneNumberDescJsImpl impl = jsImpl.getTollFree();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getTollFreeOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getTollFreeOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getUan() async {
    PhoneNumberDescJsImpl impl = jsImpl.getUan();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getUanOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getUanOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getVoicemail() async {
    PhoneNumberDescJsImpl impl = jsImpl.getVoicemail();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getVoicemailOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getVoicemailOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getVoip() async {
    PhoneNumberDescJsImpl impl = jsImpl.getVoip();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneNumberDescPlatform> getVoipOrDefault() async {
    PhoneNumberDescJsImpl impl = jsImpl.getVoipOrDefault();
    return PhoneNumberDescPlugin()..jsImpl = impl;
  }

  @override
  Future<bool> hasCarrierSpecific() async {
    return jsImpl.hasCarrierSpecific();
  }

  @override
  Future<bool> hasCountryCode() async {
    return jsImpl.hasCountryCode();
  }

  @override
  Future<bool> hasEmergency() async {
    return jsImpl.hasEmergency();
  }

  @override
  Future<bool> hasFixedLine() async {
    return jsImpl.hasFixedLine();
  }

  @override
  Future<bool> hasGeneralDesc() async {
    return jsImpl.hasGeneralDesc();
  }

  @override
  Future<bool> hasId() async {
    return jsImpl.hasId();
  }

  @override
  Future<bool> hasInternationalPrefix() async {
    return jsImpl.hasInternationalPrefix();
  }

  @override
  Future<bool> hasIntlNumberFormat() async {
    return jsImpl.hasIntlNumberFormat();
  }

  @override
  Future<bool> hasLeadingDigits() async {
    return jsImpl.hasLeadingDigits();
  }

  @override
  Future<bool> hasLeadingZeroPossible() async {
    return jsImpl.hasLeadingZeroPossible();
  }

  @override
  Future<bool> hasMainCountryForCode() async {
    return jsImpl.hasMainCountryForCode();
  }

  @override
  Future<bool> hasMobile() async {
    return jsImpl.hasMobile();
  }

  @override
  Future<bool> hasNationalPrefix() async {
    return jsImpl.hasNationalPrefix();
  }

  @override
  Future<bool> hasNationalPrefixForParsing() async {
    return jsImpl.hasNationalPrefixForParsing();
  }

  @override
  Future<bool> hasNationalPrefixTransformRule() async {
    return jsImpl.hasNationalPrefixTransformRule();
  }

  @override
  Future<bool> hasNoInternationalDialling() async {
    return jsImpl.hasNoInternationalDialling();
  }

  @override
  Future<bool> hasNumberFormat() async {
    return jsImpl.hasNumberFormat();
  }

  @override
  Future<bool> hasPager() async {
    return jsImpl.hasPager();
  }

  @override
  Future<bool> hasPersonalNumber() async {
    return jsImpl.hasPersonalNumber();
  }

  @override
  Future<bool> hasPreferredExtnPrefix() async {
    return jsImpl.hasPreferredExtnPrefix();
  }

  @override
  Future<bool> hasPreferredInternationalPrefix() async {
    return jsImpl.hasPreferredInternationalPrefix();
  }

  @override
  Future<bool> hasPremiumRate() async {
    return jsImpl.hasPremiumRate();
  }

  @override
  Future<bool> hasSameMobileAndFixedLinePattern() async {
    return jsImpl.hasSameMobileAndFixedLinePattern();
  }

  @override
  Future<bool> hasSharedCost() async {
    return jsImpl.hasSharedCost();
  }

  @override
  Future<bool> hasShortCode() async {
    return jsImpl.hasShortCode();
  }

  @override
  Future<bool> hasSmsServices() async {
    return jsImpl.hasSmsServices();
  }

  @override
  Future<bool> hasStandardRate() async {
    return jsImpl.hasStandardRate();
  }

  @override
  Future<bool> hasTollFree() async {
    return jsImpl.hasTollFree();
  }

  @override
  Future<bool> hasUan() async {
    return jsImpl.hasUan();
  }

  @override
  Future<bool> hasVoicemail() async {
    return jsImpl.hasVoicemail();
  }

  @override
  Future<bool> hasVoip() async {
    return jsImpl.hasVoip();
  }

  @override
  Future<int> idCount() async {
    return jsImpl.idCount();
  }

  @override
  Future<int> internationalPrefixCount() async {
    return jsImpl.internationalPrefixCount();
  }

  @override
  Future<List<NumberFormatPlatform>> intlNumberFormatArray() async {
    List<NumberFormatPlugin> list = jsImpl
        .intlNumberFormatArray()
        .map((e) => NumberFormatPlugin()..jsImpl = e);
    return list;
  }

  @override
  Future<int> intlNumberFormatCount() async {
    return jsImpl.intlNumberFormatCount();
  }

  @override
  Future<int> leadingDigitsCount() async {
    return jsImpl.leadingDigitsCount();
  }

  @override
  Future<int> leadingZeroPossibleCount() async {
    return jsImpl.leadingZeroPossibleCount();
  }

  @override
  Future<int> mainCountryForCodeCount() async {
    return jsImpl.mainCountryForCodeCount();
  }

  @override
  Future<int> mobileCount() async {
    return jsImpl.mobileCount();
  }

  @override
  Future<int> nationalPrefixCount() async {
    return jsImpl.nationalPrefixCount();
  }

  @override
  Future<int> nationalPrefixForParsingCount() async {
    return jsImpl.nationalPrefixForParsingCount();
  }

  @override
  Future<int> nationalPrefixTransformRuleCount() async {
    return jsImpl.nationalPrefixTransformRuleCount();
  }

  @override
  Future<int> noInternationalDiallingCount() async {
    return jsImpl.noInternationalDiallingCount();
  }

  @override
  Future<List<NumberFormatPlatform>> numberFormatArray() async {
    List<NumberFormatPlugin> list =
        jsImpl.numberFormatArray().map((e) => NumberFormatPlugin()..jsImpl = e);
    return list;
  }

  @override
  Future<int> numberFormatCount() async {
    return jsImpl.numberFormatCount();
  }

  @override
  Future<int> pagerCount() async {
    return jsImpl.pagerCount();
  }

  @override
  Future<int> personalNumberCount() async {
    return jsImpl.personalNumberCount();
  }

  @override
  Future<int> preferredExtnPrefixCount() async {
    return jsImpl.preferredExtnPrefixCount();
  }

  @override
  Future<int> preferredInternationalPrefixCount() async {
    return jsImpl.preferredInternationalPrefixCount();
  }

  @override
  Future<int> premiumRateCount() async {
    return jsImpl.premiumRateCount();
  }

  @override
  Future<int> sameMobileAndFixedLinePatternCount() async {
    return jsImpl.sameMobileAndFixedLinePatternCount();
  }

  @override
  Future<void> setCarrierSpecific(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setCarrierSpecific(impl);
  }

  @override
  Future<void> setCountryCode(int value) async {
    return jsImpl.setCountryCode(value);
  }

  @override
  Future<void> setEmergency(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setEmergency(impl);
  }

  @override
  Future<void> setFixedLine(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setFixedLine(impl);
  }

  @override
  Future<void> setGeneralDesc(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setGeneralDesc(impl);
  }

  @override
  Future<void> setId(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setId(impl);
  }

  @override
  Future<void> setInternationalPrefix(String value) async {
    return jsImpl.setInternationalPrefix(value);
  }

  @override
  Future<void> setLeadingDigits(String value) async {
    return jsImpl.setLeadingDigits(value);
  }

  @override
  Future<void> setLeadingZeroPossible(bool value) async {
    return jsImpl.setLeadingZeroPossible(value);
  }

  @override
  Future<void> setMainCountryForCode(bool value) async {
    return jsImpl.setMainCountryForCode(value);
  }

  @override
  Future<void> setMobile(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setMobile(impl);
  }

  @override
  Future<void> setNationalPrefix(String value) async {
    return jsImpl.setNationalPrefix(value);
  }

  @override
  Future<void> setNationalPrefixForParsing(String value) async {
    return jsImpl.setNationalPrefixForParsing(value);
  }

  @override
  Future<void> setNationalPrefixTransformRule(String value) async {
    return jsImpl.setNationalPrefixTransformRule(value);
  }

  @override
  Future<void> setNoInternationalDialling(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setNoInternationalDialling(impl);
  }

  @override
  Future<void> setPager(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setPager(impl);
  }

  @override
  Future<void> setPersonalNumber(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setPersonalNumber(impl);
  }

  @override
  Future<void> setPreferredExtnPrefix(String value) async {
    return jsImpl.setPreferredExtnPrefix(value);
  }

  @override
  Future<void> setPreferredInternationalPrefix(String value) async {
    return jsImpl.setPreferredInternationalPrefix(value);
  }

  @override
  Future<void> setPremiumRate(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setPremiumRate(impl);
  }

  @override
  Future<void> setSameMobileAndFixedLinePattern(String value) async {
    return jsImpl.setSameMobileAndFixedLinePattern(value);
  }

  @override
  Future<void> setSharedCost(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setSharedCost(impl);
  }

  @override
  Future<void> setShortCode(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setShortCode(impl);
  }

  @override
  Future<void> setSmsServices(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setSmsServices(impl);
  }

  @override
  Future<void> setStandardRate(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setStandardRate(impl);
  }

  @override
  Future<void> setTollFree(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setTollFree(impl);
  }

  @override
  Future<void> setUan(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setUan(impl);
  }

  @override
  Future<void> setVoicemail(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setVoicemail(impl);
  }

  @override
  Future<void> setVoip(PhoneNumberDescPlatform value) async {
    PhoneNumberDescJsImpl impl = (value as PhoneNumberDescPlugin).jsImpl;
    return jsImpl.setVoip(impl);
  }

  @override
  Future<int> sharedCostCount() async {
    return jsImpl.sharedCostCount();
  }

  @override
  Future<int> shortCodeCount() async {
    return jsImpl.shortCodeCount();
  }

  @override
  Future<int> smsServicesCount() async {
    return jsImpl.smsServicesCount();
  }

  @override
  Future<int> standardRateCount() async {
    return jsImpl.standardRateCount();
  }

  @override
  Future<int> tollFreeCount() async {
    return jsImpl.tollFreeCount();
  }

  @override
  Future<int> uanCount() async {
    return jsImpl.uanCount();
  }

  @override
  Future<int> voicemailCount() async {
    return jsImpl.voicemailCount();
  }

  @override
  Future<int> voipCount() async {
    return jsImpl.voipCount();
  }
}

class PhoneMetadataCollectionPlugin implements PhoneMetadataCollectionPlatform {
  PhoneMetadataCollectionJsImpl jsImpl;

  static void registerWith(Registrar registrar) {
    final MethodChannel methodChannel = MethodChannel(
      'plugin.libraryphonenumber',
      const StandardMethodCodec(),
      registrar.messenger,
    );
    final PhoneMetadataCollectionPlugin instance =
        PhoneMetadataCollectionPlugin();
    PhoneMetadataCollectionPlatform.instance = instance;
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
  Future<void> addMetadata(PhoneMetadataPlatform value) async {
    PhoneMetadataJsImpl impl = (value as PhoneMetadataPlugin).jsImpl;
    return jsImpl.addMetadata(impl);
  }

  @override
  Future<void> clearMetadata() async {
    return jsImpl.clearMetadata();
  }

  @override
  Future<PhoneMetadataPlatform> getLeadingZeroPossibleOrDefault(
      int index) async {
    PhoneMetadataJsImpl impl = jsImpl.getLeadingZeroPossibleOrDefault(index);
    return PhoneMetadataPlugin()..jsImpl = impl;
  }

  @override
  Future<PhoneMetadataPlatform> getMetadata(int index) async {
    PhoneMetadataJsImpl impl = jsImpl.getMetadata(index);
    return PhoneMetadataPlugin()..jsImpl = impl;
  }

  @override
  Future<bool> hasMetadata() async {
    return jsImpl.hasMetadata();
  }

  @override
  Future<List<PhoneMetadataPlatform>> metadataArray() async {
    List<PhoneMetadataPlugin> list =
        jsImpl.metadataArray().map((e) => PhoneMetadataPlugin()..jsImpl = e);
    return list;
  }

  @override
  Future<int> metadataCount() async {
    return jsImpl.metadataCount();
  }
}
