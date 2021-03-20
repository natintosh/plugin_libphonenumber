part of libphonenumber_interop;

@JS('PhoneNumber')
class PhoneNumberJsImpl {
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

  @JS('getNationalNumber')
  external int getNationalNumber();

  @JS('getNationalNumberOrDefault')
  external int getNationalNumberOrDefault();

  @JS('setNationalNumber')
  external void setNationalNumber(int value);

  @JS('hasNationalNumber')
  external bool hasNationalNumber();

  @JS('nationalNumberCount')
  external int nationalNumberCount();

  @JS('clearNationalNumber')
  external void clearNationalNumber();

  @JS('getExtension')
  external String getExtension();

  @JS('getExtensionOrDefault')
  external String getExtensionOrDefault();

  @JS('setExtension')
  external void setExtension(String value);

  @JS('hasExtension')
  external bool hasExtension();

  @JS('extensionCount')
  external int extensionCount();

  @JS('clearExtension')
  external void clearExtension();

  @JS('getItalianLeadingZero')
  external bool getItalianLeadingZero();

  @JS('getItalianLeadingZeroOrDefault')
  external bool getItalianLeadingZeroOrDefault();

  @JS('setItalianLeadingZero')
  external void setItalianLeadingZero(bool value);

  @JS('hasItalianLeadingZero')
  external bool hasItalianLeadingZero();

  @JS('italianLeadingZeroCount')
  external int italianLeadingZeroCount();

  @JS('clearItalianLeadingZero')
  external void clearItalianLeadingZero();

  @JS('getNumberOfLeadingZeros')
  external int getNumberOfLeadingZeros();

  @JS('getNumberOfLeadingZerosOrDefault')
  external int getNumberOfLeadingZerosOrDefault();

  @JS('setNumberOfLeadingZeros')
  external void setNumberOfLeadingZeros(int value);

  @JS('hasNumberOfLeadingZeros')
  external bool hasNumberOfLeadingZeros();

  @JS('numberOfLeadingZerosCount')
  external int numberOfLeadingZerosCount();

  @JS('clearNumberOfLeadingZeros')
  external void clearNumberOfLeadingZeros();

  @JS('getRawInput')
  external String getRawInput();

  @JS('getRawInputOrDefault')
  external String getRawInputOrDefault();

  @JS('setRawInput')
  external void setRawInput(String value);

  @JS('hasRawInput')
  external bool hasRawInput();

  @JS('rawInputCount')
  external int rawInputCount();

  @JS('clearRawInput')
  external void clearRawInput();

  ///
  ///     Enumeration CountryCodeSource.
  ///     @enum {number}
  ///
  ///    i18n.phonenumbers.PhoneNumber.CountryCodeSource = {
  ///      UNSPECIFIED: 0,
  ///      FROM_NUMBER_WITH_PLUS_SIGN: 1,
  ///      FROM_NUMBER_WITH_IDD: 5,
  ///      FROM_NUMBER_WITHOUT_PLUS_SIGN: 10,
  ///      FROM_DEFAULT_COUNTRY: 20
  ///   };
  ///

  @JS('getCountryCodeSource')
  external int getCountryCodeSource();

  @JS('getCountryCodeSourceOrDefault')
  external int getCountryCodeSourceOrDefault();

  @JS('setCountryCodeSource')
  external void setCountryCodeSource(int value);

  @JS('hasCountryCodeSource')
  external bool hasCountryCodeSource();

  @JS('countryCodeSourceCount')
  external int countryCodeSourceCount();

  @JS('clearCountryCodeSource')
  external void clearCountryCodeSource();

  // END

  @JS('getPreferredDomesticCarrierCode')
  external String getPreferredDomesticCarrierCode();

  @JS('getPreferredDomesticCarrierCodeOrDefault')
  external String getPreferredDomesticCarrierCodeOrDefault();

  @JS('setPreferredDomesticCarrierCode')
  external void setPreferredDomesticCarrierCode(String value);

  @JS('hasPreferredDomesticCarrierCode')
  external bool hasPreferredDomesticCarrierCode();

  @JS('preferredDomesticCarrierCodeCount')
  external int preferredDomesticCarrierCodeCount();

  @JS('clearPreferredDomesticCarrierCode')
  external void clearPreferredDomesticCarrierCode();
}
