part of libphonenumber_interop;

@JS('ShortNumberInfo')
class ShortNumberInfoJsImpl {
  @JS('getInstance')
  external static ShortNumberInfoJsImpl getInstance();

  @JS('isPossibleShortNumberForRegion')
  external bool isPossibleShortNumberForRegion(
      PhoneNumberJsImpl number, String regionDialingFrom);

  @JS('isPossibleShortNumber')
  external bool isPossibleShortNumber(PhoneNumberJsImpl number);

  @JS('isValidShortNumberForRegion')
  external bool isValidShortNumberForRegion(
      PhoneNumberJsImpl number, String regionDialingFrom);

  @JS('isValidShortNumber')
  external bool isValidShortNumber(PhoneNumberJsImpl number);

  @JS('getExpectedCostForRegion')
  external int getExpectedCostForRegion(
      PhoneNumberJsImpl number, String regionDialingFrom);

  @JS('getExpectedCost')
  external int getExpectedCost(PhoneNumberJsImpl number);

  @JS('getSupportedRegions')
  external List<String> getSupportedRegions();

  @JS('getExampleShortNumber')
  external String getExampleShortNumber(String regionCode);

  @JS('getExampleShortNumberForCost')
  external String getExampleShortNumberForCost(String regionCode, int cost);

  @JS('connectsToEmergencyNumber')
  external bool connectsToEmergencyNumber(String number, String regionCode);

  @JS('isEmergencyNumber')
  external bool isEmergencyNumber(String number, String regionCode);

  @JS('isCarrierSpecific')
  external bool isCarrierSpecific(PhoneNumberJsImpl number);

  @JS('isCarrierSpecificForRegion')
  external bool isCarrierSpecificForRegion(
      PhoneNumberJsImpl number, String regionDialingFrom);

  @JS('isSmsServiceForRegion')
  external bool isSmsServiceForRegion(
      PhoneNumberJsImpl number, String regionDialingFrom);
}
