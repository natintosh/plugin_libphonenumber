part of libphonenumber_interop;

@JS('NumberFormat')
class NumberFormatJsImpl {
  @JS('getPattern')
  external String getPattern();

  @JS('getPatternOrDefault')
  external String getPatternOrDefault();

  @JS('setPattern')
  external void setPattern(String value);

  @JS('hasPattern')
  external bool hasPattern();

  @JS('patternCount')
  external int patternCount();

  @JS('clearPattern')
  external void clearPattern();

  @JS('getFormat')
  external String getFormat();

  @JS('getFormatOrDefault')
  external String getFormatOrDefault();

  @JS('setFormat')
  external void setFormat(String value);

  @JS('hasFormat')
  external bool hasFormat();

  @JS('formatCount')
  external int formatCount();

  @JS('clearFormat')
  external void clearFormat();

  @JS('getLeadingDigitsPattern')
  external String getLeadingDigitsPattern(int index);

  @JS('addLeadingDigitsPattern')
  external void addLeadingDigitsPattern(String value);

  @JS('leadingDigitsPatternArray')
  external List<String> leadingDigitsPatternArray();

  @JS('hasLeadingDigitsPattern')
  external bool hasLeadingDigitsPattern();

  @JS('leadingDigitsPatternCount')
  external int leadingDigitsPatternCount();

  @JS('clearLeadingDigitsPattern')
  external void clearLeadingDigitsPattern();

  @JS('getNationalPrefixFormattingRule')
  external String getNationalPrefixFormattingRule();

  @JS('getNationalPrefixFormattingRuleOrDefault')
  external String getNationalPrefixFormattingRuleOrDefault();

  @JS('setNationalPrefixFormattingRule')
  external void setNationalPrefixFormattingRule(String value);

  @JS('hasNationalPrefixFormattingRule')
  external bool hasNationalPrefixFormattingRule();

  @JS('nationalPrefixFormattingRuleCount')
  external int nationalPrefixFormattingRuleCount();

  @JS('clearNationalPrefixFormattingRule')
  external void clearNationalPrefixFormattingRule();

  @JS('getNationalPrefixOptionalWhenFormatting')
  external bool getNationalPrefixOptionalWhenFormatting();

  @JS('getNationalPrefixOptionalWhenFormattingOrDefault')
  external bool getNationalPrefixOptionalWhenFormattingOrDefault();

  @JS('setNationalPrefixOptionalWhenFormatting')
  external void setNationalPrefixOptionalWhenFormatting(bool value);

  @JS('hasNationalPrefixOptionalWhenFormatting')
  external bool hasNationalPrefixOptionalWhenFormatting();

  @JS('nationalPrefixOptionalWhenFormattingCount')
  external int nationalPrefixOptionalWhenFormattingCount();

  @JS('clearNationalPrefixOptionalWhenFormatting')
  external void clearNationalPrefixOptionalWhenFormatting();

  @JS('getDomesticCarrierCodeFormattingRule')
  external String getDomesticCarrierCodeFormattingRule();

  @JS('getDomesticCarrierCodeFormattingRuleOrDefault')
  external String getDomesticCarrierCodeFormattingRuleOrDefault();

  @JS('setDomesticCarrierCodeFormattingRule')
  external void setDomesticCarrierCodeFormattingRule(String value);

  @JS('hasDomesticCarrierCodeFormattingRule')
  external bool hasDomesticCarrierCodeFormattingRule();

  @JS('domesticCarrierCodeFormattingRuleCount')
  external int domesticCarrierCodeFormattingRuleCount();

  @JS('clearDomesticCarrierCodeFormattingRule')
  external void clearDomesticCarrierCodeFormattingRule();
}

@JS('PhoneNumberDesc')
class PhoneNumberDescJsImpl {
  @JS('getNationalNumberPattern')
  external String getNationalNumberPattern();

  @JS('getNationalNumberPatternOrDefault')
  external String getNationalNumberPatternOrDefault();

  @JS('setNationalNumberPattern')
  external void setNationalNumberPattern(String value);

  @JS('hasNationalNumberPattern')
  external bool hasNationalNumberPattern();

  @JS('nationalNumberPatternCount')
  external int nationalNumberPatternCount();

  @JS('clearNationalNumberPattern')
  external void clearNationalNumberPattern();

  @JS('getPossibleLength')
  external int getPossibleLength(int index);

  @JS('getPossibleLengthOrDefault')
  external int getPossibleLengthOrDefault(int index);

  @JS('addPossibleLength')
  external void addPossibleLength(int value);

  @JS('possibleLengthArray')
  external List<int> possibleLengthArray();

  @JS('hasPossibleLength')
  external bool hasPossibleLength();

  @JS('possibleLengthCount')
  external int possibleLengthCount();

  @JS('clearPossibleLength')
  external void clearPossibleLength();

  @JS('getPossibleLengthLocalOnly')
  external int getPossibleLengthLocalOnly(int index);

  @JS('getPossibleLengthLocalOnlyOrDefault')
  external int getPossibleLengthLocalOnlyOrDefault(int index);

  @JS('addPossibleLengthLocalOnly')
  external void addPossibleLengthLocalOnly(int value);

  @JS('possibleLengthLocalOnlyArray')
  external List<int> possibleLengthLocalOnlyArray();

  @JS('hasPossibleLengthLocalOnly')
  external bool hasPossibleLengthLocalOnly();

  @JS('possibleLengthLocalOnlyCount')
  external int possibleLengthLocalOnlyCount();

  @JS('clearPossibleLengthLocalOnly')
  external void clearPossibleLengthLocalOnly();

  @JS('getExampleNumber')
  external String getExampleNumber();

  @JS('getExampleNumberOrDefault')
  external String getExampleNumberOrDefault();

  @JS('setExampleNumber')
  external void setExampleNumber(String value);

  @JS('hasExampleNumber')
  external bool hasExampleNumber();

  @JS('exampleNumberCount')
  external int exampleNumberCount();

  @JS('clearExampleNumber')
  external void clearExampleNumber();
}

@JS('PhoneMetadata')
class PhoneMetadataJsImpl {
  @JS('getGeneralDesc')
  external PhoneNumberDescJsImpl getGeneralDesc();

  @JS('getGeneralDescOrDefault')
  external PhoneNumberDescJsImpl getGeneralDescOrDefault();

  @JS('setGeneralDesc')
  external void setGeneralDesc(PhoneNumberDescJsImpl value);

  @JS('hasGeneralDesc')
  external bool hasGeneralDesc();

  @JS('generalDescCount')
  external int generalDescCount();

  @JS('clearGeneralDesc')
  external void clearGeneralDesc();

  @JS('getFixedLine')
  external PhoneNumberDescJsImpl getFixedLine();

  @JS('getFixedLineOrDefault')
  external PhoneNumberDescJsImpl getFixedLineOrDefault();

  @JS('setFixedLine')
  external void setFixedLine(PhoneNumberDescJsImpl value);

  @JS('hasFixedLine')
  external bool hasFixedLine();

  @JS('fixedLineCount')
  external int fixedLineCount();

  @JS('clearFixedLine')
  external void clearFixedLine();

  @JS('getMobile')
  external PhoneNumberDescJsImpl getMobile();

  @JS('getMobileOrDefault')
  external PhoneNumberDescJsImpl getMobileOrDefault();

  @JS('setMobile')
  external void setMobile(PhoneNumberDescJsImpl value);

  @JS('hasMobile')
  external bool hasMobile();

  @JS('mobileCount')
  external int mobileCount();

  @JS('clearMobile')
  external void clearMobile();

  @JS('getTollFree')
  external PhoneNumberDescJsImpl getTollFree();

  @JS('getTollFreeOrDefault')
  external PhoneNumberDescJsImpl getTollFreeOrDefault();

  @JS('setTollFree')
  external void setTollFree(PhoneNumberDescJsImpl value);

  @JS('hasTollFree')
  external bool hasTollFree();

  @JS('tollFreeCount')
  external int tollFreeCount();

  @JS('clearTollFree')
  external void clearTollFree();

  @JS('getPremiumRate')
  external PhoneNumberDescJsImpl getPremiumRate();

  @JS('getPremiumRateOrDefault')
  external PhoneNumberDescJsImpl getPremiumRateOrDefault();

  @JS('setPremiumRate')
  external void setPremiumRate(PhoneNumberDescJsImpl value);

  @JS('hasPremiumRate')
  external bool hasPremiumRate();

  @JS('premiumRateCount')
  external int premiumRateCount();

  @JS('clearPremiumRate')
  external void clearPremiumRate();

  @JS('getSharedCost')
  external PhoneNumberDescJsImpl getSharedCost();

  @JS('getSharedCostOrDefault')
  external PhoneNumberDescJsImpl getSharedCostOrDefault();

  @JS('setSharedCost')
  external void setSharedCost(PhoneNumberDescJsImpl value);

  @JS('hasSharedCost')
  external bool hasSharedCost();

  @JS('sharedCostCount')
  external int sharedCostCount();

  @JS('clearSharedCost')
  external void clearSharedCost();

  @JS('getPersonalNumber')
  external PhoneNumberDescJsImpl getPersonalNumber();

  @JS('getPersonalNumberOrDefault')
  external PhoneNumberDescJsImpl getPersonalNumberOrDefault();

  @JS('setPersonalNumber')
  external void setPersonalNumber(PhoneNumberDescJsImpl value);

  @JS('hasPersonalNumber')
  external bool hasPersonalNumber();

  @JS('personalNumberCount')
  external int personalNumberCount();

  @JS('clearPersonalNumber')
  external void clearPersonalNumber();

  @JS('getVoip')
  external PhoneNumberDescJsImpl getVoip();

  @JS('getVoipOrDefault')
  external PhoneNumberDescJsImpl getVoipOrDefault();

  @JS('setVoip')
  external void setVoip(PhoneNumberDescJsImpl value);

  @JS('hasVoip')
  external bool hasVoip();

  @JS('voipCount')
  external int voipCount();

  @JS('clearVoip')
  external void clearVoip();

  @JS('getPager')
  external PhoneNumberDescJsImpl getPager();

  @JS('getPagerOrDefault')
  external PhoneNumberDescJsImpl getPagerOrDefault();

  @JS('setPager')
  external void setPager(PhoneNumberDescJsImpl value);

  @JS('hasPager')
  external bool hasPager();

  @JS('pagerCount')
  external int pagerCount();

  @JS('clearPager')
  external void clearPager();

  @JS('getUan')
  external PhoneNumberDescJsImpl getUan();

  @JS('getUanOrDefault')
  external PhoneNumberDescJsImpl getUanOrDefault();

  @JS('setUan')
  external void setUan(PhoneNumberDescJsImpl value);

  @JS('hasUan')
  external bool hasUan();

  @JS('uanCount')
  external int uanCount();

  @JS('clearUan')
  external void clearUan();

  @JS('getEmergency')
  external PhoneNumberDescJsImpl getEmergency();

  @JS('getEmergencyOrDefault')
  external PhoneNumberDescJsImpl getEmergencyOrDefault();

  @JS('setEmergency')
  external void setEmergency(PhoneNumberDescJsImpl value);

  @JS('hasEmergency')
  external bool hasEmergency();

  @JS('emergencyCount')
  external int emergencyCount();

  @JS('clearEmergency')
  external void clearEmergency();

  @JS('getVoicemail')
  external PhoneNumberDescJsImpl getVoicemail();

  @JS('getVoicemailOrDefault')
  external PhoneNumberDescJsImpl getVoicemailOrDefault();

  @JS('setVoicemail')
  external void setVoicemail(PhoneNumberDescJsImpl value);

  @JS('hasVoicemail')
  external bool hasVoicemail();

  @JS('voicemailCount')
  external int voicemailCount();

  @JS('clearVoicemail')
  external void clearVoicemail();

  @JS('getShortCode')
  external PhoneNumberDescJsImpl getShortCode();

  @JS('getShortCodeOrDefault')
  external PhoneNumberDescJsImpl getShortCodeOrDefault();

  @JS('setShortCode')
  external void setShortCode(PhoneNumberDescJsImpl value);

  @JS('hasShortCode')
  external bool hasShortCode();

  @JS('shortCodeCount')
  external int shortCodeCount();

  @JS('clearShortCode')
  external void clearShortCode();

  @JS('getStandardRate')
  external PhoneNumberDescJsImpl getStandardRate();

  @JS('getStandardRateOrDefault')
  external PhoneNumberDescJsImpl getStandardRateOrDefault();

  @JS('setStandardRate')
  external void setStandardRate(PhoneNumberDescJsImpl value);

  @JS('hasStandardRate')
  external bool hasStandardRate();

  @JS('standardRateCount')
  external int standardRateCount();

  @JS('clearStandardRate')
  external void clearStandardRate();

  @JS('getCarrierSpecific')
  external PhoneNumberDescJsImpl getCarrierSpecific();

  @JS('getCarrierSpecificOrDefault')
  external PhoneNumberDescJsImpl getCarrierSpecificOrDefault();

  @JS('setCarrierSpecific')
  external void setCarrierSpecific(PhoneNumberDescJsImpl value);

  @JS('hasCarrierSpecific')
  external bool hasCarrierSpecific();

  @JS('carrierSpecificCount')
  external int carrierSpecificCount();

  @JS('clearCarrierSpecific')
  external void clearCarrierSpecific();

  @JS('getSmsServices')
  external PhoneNumberDescJsImpl getSmsServices();

  @JS('getSmsServicesOrDefault')
  external PhoneNumberDescJsImpl getSmsServicesOrDefault();

  @JS('setSmsServices')
  external void setSmsServices(PhoneNumberDescJsImpl value);

  @JS('hasSmsServices')
  external bool hasSmsServices();

  @JS('smsServicesCount')
  external int smsServicesCount();

  @JS('clearSmsServices')
  external void clearSmsServices();

  @JS('getNoInternationalDialling')
  external PhoneNumberDescJsImpl getNoInternationalDialling();

  @JS('getNoInternationalDiallingOrDefault')
  external PhoneNumberDescJsImpl getNoInternationalDiallingOrDefault();

  @JS('setNoInternationalDialling')
  external void setNoInternationalDialling(PhoneNumberDescJsImpl value);

  @JS('hasNoInternationalDialling')
  external bool hasNoInternationalDialling();

  @JS('noInternationalDiallingCount')
  external int noInternationalDiallingCount();

  @JS('clearNoInternationalDialling')
  external void clearNoInternationalDialling();

  @JS('getId')
  external PhoneNumberDescJsImpl getId();

  @JS('getIdOrDefault')
  external PhoneNumberDescJsImpl getIdOrDefault();

  @JS('setId')
  external void setId(PhoneNumberDescJsImpl value);

  @JS('hasId')
  external bool hasId();

  @JS('idCount')
  external int idCount();

  @JS('clearId')
  external void clearId();

  @JS('getCountryCode')
  external int getCountryCode();

  @JS('getCountryCodeOrDefault')
  external int getCountryCodeOrDefault();

  @JS('setCountryCode')
  external void setCountryCode(int value);

  @JS('hasCountryCode')
  external bool hasCountryCode();

  @JS('countryCodeCount')
  external int countryCodeCount();

  @JS('clearCountryCode')
  external void clearCountryCode();

  @JS('getInternationalPrefix')
  external String getInternationalPrefix();

  @JS('getInternationalPrefixOrDefault')
  external String getInternationalPrefixOrDefault();

  @JS('setInternationalPrefix')
  external void setInternationalPrefix(String value);

  @JS('hasInternationalPrefix')
  external bool hasInternationalPrefix();

  @JS('internationalPrefixCount')
  external int internationalPrefixCount();

  @JS('clearInternationalPrefix')
  external void clearInternationalPrefix();

  @JS('getPreferredInternationalPrefix')
  external String getPreferredInternationalPrefix();

  @JS('getPreferredInternationalPrefixOrDefault')
  external String getPreferredInternationalPrefixOrDefault();

  @JS('setPreferredInternationalPrefix')
  external void setPreferredInternationalPrefix(String value);

  @JS('hasPreferredInternationalPrefix')
  external bool hasPreferredInternationalPrefix();

  @JS('preferredInternationalPrefixCount')
  external int preferredInternationalPrefixCount();

  @JS('clearPreferredInternationalPrefix')
  external void clearPreferredInternationalPrefix();

  @JS('getNationalPrefix')
  external String getNationalPrefix();

  @JS('getNationalPrefixOrDefault')
  external String getNationalPrefixOrDefault();

  @JS('setNationalPrefix')
  external void setNationalPrefix(String value);

  @JS('hasNationalPrefix')
  external bool hasNationalPrefix();

  @JS('nationalPrefixCount')
  external int nationalPrefixCount();

  @JS('clearNationalPrefix')
  external void clearNationalPrefix();

  @JS('getPreferredExtnPrefix')
  external String getPreferredExtnPrefix();

  @JS('getPreferredExtnPrefixOrDefault')
  external String getPreferredExtnPrefixOrDefault();

  @JS('setPreferredExtnPrefix')
  external void setPreferredExtnPrefix(String value);

  @JS('hasPreferredExtnPrefix')
  external bool hasPreferredExtnPrefix();

  @JS('preferredExtnPrefixCount')
  external int preferredExtnPrefixCount();

  @JS('clearPreferredExtnPrefix')
  external void clearPreferredExtnPrefix();

  @JS('getNationalPrefixForParsing')
  external String getNationalPrefixForParsing();

  @JS('getNationalPrefixForParsingOrDefault')
  external String getNationalPrefixForParsingOrDefault();

  @JS('setNationalPrefixForParsing')
  external void setNationalPrefixForParsing(String value);

  @JS('hasNationalPrefixForParsing')
  external bool hasNationalPrefixForParsing();

  @JS('nationalPrefixForParsingCount')
  external int nationalPrefixForParsingCount();

  @JS('clearNationalPrefixForParsing')
  external void clearNationalPrefixForParsing();

  @JS('getNationalPrefixTransformRule')
  external String getNationalPrefixTransformRule();

  @JS('getNationalPrefixTransformRuleOrDefault')
  external String getNationalPrefixTransformRuleOrDefault();

  @JS('setNationalPrefixTransformRule')
  external void setNationalPrefixTransformRule(String value);

  @JS('hasNationalPrefixTransformRule')
  external bool hasNationalPrefixTransformRule();

  @JS('nationalPrefixTransformRuleCount')
  external int nationalPrefixTransformRuleCount();

  @JS('clearNationalPrefixTransformRule')
  external void clearNationalPrefixTransformRule();

  @JS('getSameMobileAndFixedLinePattern')
  external String getSameMobileAndFixedLinePattern();

  @JS('getSameMobileAndFixedLinePatternOrDefault')
  external String getSameMobileAndFixedLinePatternOrDefault();

  @JS('setSameMobileAndFixedLinePattern')
  external void setSameMobileAndFixedLinePattern(String value);

  @JS('hasSameMobileAndFixedLinePattern')
  external bool hasSameMobileAndFixedLinePattern();

  @JS('sameMobileAndFixedLinePatternCount')
  external int sameMobileAndFixedLinePatternCount();

  @JS('clearSameMobileAndFixedLinePattern')
  external void clearSameMobileAndFixedLinePattern();

  @JS('getNumberFormat')
  external int getNumberFormat(NumberFormatJsImpl index);

  @JS('getNumberFormatOrDefault')
  external int getNumberFormatOrDefault(NumberFormatJsImpl index);

  @JS('addNumberFormat')
  external void addNumberFormat(NumberFormatJsImpl value);

  @JS('numberFormatArray')
  external List<NumberFormatJsImpl> numberFormatArray();

  @JS('hasNumberFormat')
  external bool hasNumberFormat();

  @JS('numberFormatCount')
  external int numberFormatCount();

  @JS('clearNumberFormat')
  external void clearNumberFormat();

  @JS('getIntlNumberFormat')
  external int getIntlNumberFormat(NumberFormatJsImpl index);

  @JS('getIntlNumberFormatOrDefault')
  external int getIntlNumberFormatOrDefault(NumberFormatJsImpl index);

  @JS('addIntlNumberFormat')
  external void addIntlNumberFormat(NumberFormatJsImpl value);

  @JS('intlNumberFormatArray')
  external List<NumberFormatJsImpl> intlNumberFormatArray();

  @JS('hasIntlNumberFormat')
  external bool hasIntlNumberFormat();

  @JS('intlNumberFormatCount')
  external int intlNumberFormatCount();

  @JS('clearIntlNumberFormat')
  external void clearIntlNumberFormat();

  @JS('getMainCountryForCode')
  external bool getMainCountryForCode();

  @JS('getMainCountryForCodeOrDefault')
  external bool getMainCountryForCodeOrDefault();

  @JS('setMainCountryForCode')
  external void setMainCountryForCode(bool value);

  @JS('hasMainCountryForCode')
  external bool hasMainCountryForCode();

  @JS('mainCountryForCodeCount')
  external int mainCountryForCodeCount();

  @JS('clearMainCountryForCode')
  external void clearMainCountryForCode();

  @JS('getLeadingDigits')
  external String getLeadingDigits();

  @JS('getLeadingDigitsOrDefault')
  external String getLeadingDigitsOrDefault();

  @JS('setLeadingDigits')
  external void setLeadingDigits(String value);

  @JS('hasLeadingDigits')
  external bool hasLeadingDigits();

  @JS('leadingDigitsCount')
  external int leadingDigitsCount();

  @JS('clearLeadingDigits')
  external void clearLeadingDigits();

  @JS('getLeadingZeroPossible')
  external bool getLeadingZeroPossible();

  @JS('getLeadingZeroPossibleOrDefault')
  external bool getLeadingZeroPossibleOrDefault();

  @JS('setLeadingZeroPossible')
  external void setLeadingZeroPossible(bool value);

  @JS('hasLeadingZeroPossible')
  external bool hasLeadingZeroPossible();

  @JS('leadingZeroPossibleCount')
  external int leadingZeroPossibleCount();

  @JS('clearLeadingZeroPossible')
  external void clearLeadingZeroPossible();
}

@JS('PhoneMetadataCollection')
class PhoneMetadataCollectionJsImpl {
  @JS('getMetadata')
  external PhoneMetadataJsImpl getMetadata(int index);

  @JS('getMetadataOrDefault')
  external PhoneMetadataJsImpl getLeadingZeroPossibleOrDefault(int index);

  @JS('addMetadata')
  external void addMetadata(PhoneMetadataJsImpl value);

  @JS('metadataArray')
  external List<PhoneMetadataJsImpl> metadataArray();

  @JS('hasMetadata')
  external bool hasMetadata();

  @JS('metadataCount')
  external int metadataCount();

  @JS('clearMetadata')
  external void clearMetadata();
}
