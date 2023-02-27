part of libphonenumber_interop;

@JS('PhoneNumberUtil')
class PhoneNumberUtilJsImpl {
  external PhoneNumberUtilJsImpl._();

  @JS('getInstance')
  external static PhoneNumberUtilJsImpl getInstance();

  @JS('extractPossibleNumber')
  external String extractPossibleNumber(String number);

  @JS('isViablePhoneNumber')
  external bool isViablePhoneNumber(String number);

  @JS('normalize')
  external String normalize(String number);

  @JS('normalizeDigitsOnly')
  external String normalizeDigitsOnly(String number);

  @JS('normalizeDiallableCharsOnly')
  external String normalizeDiallableCharsOnly(String number);

  @JS('convertAlphaCharactersInNumber')
  external String convertAlphaCharactersInNumber(String number);

  @JS('getLengthOfGeographicalAreaCode')
  external int getLengthOfGeographicalAreaCode(PhoneNumberJsImpl number);

  @JS('getLengthOfNationalDestinationCode')
  external int getLengthOfNationalDestinationCode(PhoneNumberJsImpl number);

  @JS('getCountryMobileToken')
  external String getCountryMobileToken(int countryCallingCode);

  @JS('getSupportedRegions')
  external List<dynamic> getSupportedRegions();

  @JS('getSupportedGlobalNetworkCallingCodes')
  external List<int> getSupportedGlobalNetworkCallingCodes();

  @JS('getSupportedCallingCodes')
  external List<int> getSupportedCallingCodes();

  ///
  ///   * Type of phone numbers.
  ///
  ///   * @enum {number}
  ///
  ///    i18n.phonenumbers.PhoneNumberType = {
  ///      FIXED_LINE: 0,
  ///      MOBILE: 1,
  ///      // In some regions (e.g. the USA), it is impossible to distinguish between
  ///      // fixed-line and mobile numbers by looking at the phone number itself.
  ///      FIXED_LINE_OR_MOBILE: 2,
  ///      // Freephone lines
  ///      TOLL_FREE: 3,
  ///      PREMIUM_RATE: 4,
  ///      // The cost of this call is shared between the caller and the recipient, and
  ///      // is hence typically less than PREMIUM_RATE calls. See
  ///      // http://en.wikipedia.org/wiki/Shared_Cost_Service for more information.
  ///      SHARED_COST: 5,
  ///      // Voice over IP numbers. This includes TSoIP (Telephony Service over IP).
  ///      VOIP: 6,
  ///      // A personal number is associated with a particular person, and may be routed
  ///      // to either a MOBILE or FIXED_LINE number. Some more information can be found
  ///      // here: http://en.wikipedia.org/wiki/Personal_Numbers
  ///      PERSONAL_NUMBER: 7,
  ///      PAGER: 8,
  ///      // Used for 'Universal Access Numbers' or 'Company Numbers'. They may be
  ///      // further routed to specific offices, but allow one number to be used for a
  ///      // company.
  ///      UAN: 9,
  ///      // Used for 'Voice Mail Access Numbers'.
  ///      VOICEMAIL: 10,
  ///      // A phone number is of type UNKNOWN when it does not fit any of the known
  ///      // patterns for a specific region.
  ///      UNKNOWN: -1
  ///    };
  ///

  @JS('getSupportedTypesForRegion')
  external List<int> getSupportedTypesForRegion(String regionCode);

  @JS('getSupportedTypesForNonGeoEntity')
  external List<int> getSupportedTypesForNonGeoEntity(String regionCode);

  @JS('formattingRuleHasFirstGroupOnly')
  external bool formattingRuleHasFirstGroupOnly(
      String nationalPrefixFormattingRule);

  @JS('isNumberGeographical')
  external bool isNumberGeographical(PhoneNumberJsImpl number);

  @JS('format')
  external String format(PhoneNumberJsImpl number, int numberFormat);

  @JS('formatByPattern')
  external String formatByPattern(PhoneNumberJsImpl number, int numberFormat,
      NumberFormatJsImpl userDefineFormat);

  @JS('formatNationalNumberWithCarrierCode')
  external String formatNationalNumberWithCarrierCode(
      PhoneNumberJsImpl number, String carrierCode);

  @JS('formatNationalNumberWithPreferredCarrierCode')
  external String formatNationalNumberWithPreferredCarrierCode(
      PhoneNumberJsImpl number, String fallbackCarrierCode);

  @JS('formatNumberForMobileDialing')
  external String formatNumberForMobileDialing(
      PhoneNumberJsImpl number, String regionCallingFrom, bool withFormatting);

  @JS('formatOutOfCountryCallingNumber')
  external String formatOutOfCountryCallingNumber(
      PhoneNumberJsImpl number, String regionCallingFrom);

  @JS('formatInOriginalFormat')
  external String formatInOriginalFormat(
      PhoneNumberJsImpl number, String regionCallingFrom);

  @JS('formatOutOfCountryKeepingAlphaChars')
  external String formatOutOfCountryKeepingAlphaChars(
      PhoneNumberJsImpl number, String regionCallingFrom);

  @JS('getNationalSignificantNumber')
  external String getNationalSignificantNumber(PhoneNumberJsImpl number);

  @JS('getExampleNumber')
  external PhoneNumberJsImpl getExampleNumber(String regionCode);

  @JS('getExampleNumberForType')
  external PhoneNumberJsImpl getExampleNumberForType(
      String regionCode, int type);

  @JS('getExampleNumberForNonGeoEntity')
  external PhoneNumberJsImpl getExampleNumberForNonGeoEntity(
      int countryCallingCode);

  @JS('getNumberType')
  external int getNumberType(PhoneNumberJsImpl number);

  @JS('getMetadataForRegion')
  external PhoneMetadataJsImpl getMetadataForRegion(String regionCode);

  @JS('getMetadataForNonGeographicalRegion')
  external PhoneMetadataJsImpl getMetadataForNonGeographicalRegion(
      int countryCallingCode);

  @JS('isValidNumber')
  external bool isValidNumber(PhoneNumberJsImpl number);

  @JS('isValidNumberForRegion')
  external bool isValidNumberForRegion(
      PhoneNumberJsImpl number, String regionCode);

  @JS('getRegionCodeForNumber')
  external String getRegionCodeForNumber(PhoneNumberJsImpl number);

  @JS('getRegionCodeForCountryCode')
  external String getRegionCodeForCountryCode(int countryCallingCode);

  @JS('getCountryCodeForRegion')
  external int getCountryCodeForRegion(String regionCode);

  @JS('getNddPrefixForRegion')
  external String getNddPrefixForRegion(
      String regionCode, bool stripeNonDigits);

  @JS('isNANPACountry')
  external bool isNANPACountry(String regionCode);

  @JS('isAlphaNumber')
  external bool isAlphaNumber(String number);

  @JS('isPossibleNumber')
  external bool isPossibleNumber(PhoneNumberJsImpl number);

  @JS('isPossibleNumberForType')
  external bool isPossibleNumberForType(PhoneNumberJsImpl number, int type);

  @JS('isPossibleNumberWithReason')
  external bool isPossibleNumberWithReason(PhoneNumberJsImpl number);

  @JS('isPossibleNumberForTypeWithReason')
  external bool isPossibleNumberForTypeWithReason(
      PhoneNumberJsImpl number, int type);

  @JS('isPossibleNumberString')
  external bool isPossibleNumberString(
      String number, String regionDialiingFrom);

  @JS('truncateTooLongNumber')
  external bool truncateTooLongNumber(PhoneNumberJsImpl number);

  @JS('extractCountryCode')
  external int extractCountryCode(
      StringBufferJsImpl fullNumber, StringBufferJsImpl nationalNumber);

  @JS('maybeExtractCountryCode')
  external int maybeExtractCountryCode(
      String number,
      PhoneMetadataJsImpl defaultRegionMetadata,
      StringBufferJsImpl nationalNumber,
      bool keepRawInput,
      PhoneNumberJsImpl phoneNumber);

  @JS('maybeStripInternationalPrefixAndNormalize')
  external int maybeStripInternationalPrefixAndNormalize(
      StringBufferJsImpl number, String possibleIddPrefix);

  @JS('maybeStripNationalPrefixAndCarrierCode')
  external bool maybeStripNationalPrefixAndCarrierCode(
      StringBufferJsImpl number,
      PhoneMetadataJsImpl metadata,
      StringBufferJsImpl carrierCode);

  @JS('maybeStripExtension')
  external String maybeStripExtension(StringBufferJsImpl number);

  @JS('parse')
  external PhoneNumberJsImpl parse(String numberToParse, String defaultRegion);

  @JS('parseAndKeepRawInput')
  external PhoneNumberJsImpl parseAndKeepRawInput(
      String numberToParse, String defaultRegion);

  @JS('isNumberMatch')
  external int isNumberMatch(String firstNumberIn, String secondNumberIn);

  @JS('isNumberMatch')
  external int isPhoneNumberMatch(
      PhoneNumberJsImpl firstNumberIn, PhoneNumberJsImpl secondNumberIn);

  @JS('canBeInternationallyDialled')
  external bool canBeInternationallyDialled(PhoneNumberJsImpl number);

  /// TODO:
  ///
  /// Try this with regexp object from dart
  ///
  @JS('matchesEntirely')
  external bool matchesEntirely(String regex, String str);

  @JS('matchesPrefix')
  external bool matchesPrefix(String regex, String str);

  ///
  /// End of Regexp test
  ///
}
