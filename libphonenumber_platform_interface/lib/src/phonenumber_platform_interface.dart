import 'package:libphonenumber_platform_interface/src/enum/country_code_source.dart';
import 'package:libphonenumber_platform_interface/src/method_channel/phonenumber_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class PhoneNumberPlatform extends PlatformInterface {
  PhoneNumberPlatform() : super(token: _token);

  static final Object _token = Object();

  static PhoneNumberPlatform _instance = MethodChannelPhoneNumber();

  static PhoneNumberPlatform get instance => _instance;

  static set instance(PhoneNumberPlatform intance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<int> getCountryCode() {
    throw UnimplementedError('getCountryCode() has not been implemented.');
  }

  Future<int> getCountryCodeOrDefault() {
    throw UnimplementedError(
        'getCountryCodeOrDefault() has not been implemented.');
  }

  Future<void> setCountryCode(int value) {
    throw UnimplementedError('setCountryCode() has not been implemented.');
  }

  Future<bool> hasCountryCode() {
    throw UnimplementedError('hasCountryCode() has not been implemented.');
  }

  Future<int> countryCodeCount() {
    throw UnimplementedError('countryCodeCount() has not been implemented.');
  }

  Future<void> clearCountryCode() {
    throw UnimplementedError('clearCountryCode() has not been implemented.');
  }

  Future<int> getNationalNumber() {
    throw UnimplementedError('getNationalNumber() has not been implemented.');
  }

  Future<int> getNationalNumberOrDefault() {
    throw UnimplementedError(
        'getNationalNumberOrDefault() has not been implemented.');
  }

  Future<void> setNationalNumber(int value) {
    throw UnimplementedError('setNationalNumber() has not been implemented.');
  }

  Future<bool> hasNationalNumber() {
    throw UnimplementedError('hasNationalNumber() has not been implemented.');
  }

  Future<int> nationalNumberCount() {
    throw UnimplementedError('nationalNumberCount() has not been implemented.');
  }

  Future<void> clearNationalNumber() {
    throw UnimplementedError('clearNationalNumber() has not been implemented.');
  }

  Future<String> getExtension() {
    throw UnimplementedError('getExtension() has not been implemented.');
  }

  Future<String> getExtensionOrDefault() {
    throw UnimplementedError(
        'getExtensionOrDefault() has not been implemented.');
  }

  Future<void> setExtension(String value) {
    throw UnimplementedError('setExtension() has not been implemented.');
  }

  Future<bool> hasExtension() {
    throw UnimplementedError('hasExtension() has not been implemented.');
  }

  Future<int> extensionCount() {
    throw UnimplementedError('extensionCount() has not been implemented.');
  }

  Future<void> clearExtension() {
    throw UnimplementedError('clearExtension() has not been implemented.');
  }

  Future<bool> getItalianLeadingZero() {
    throw UnimplementedError(
        'getItalianLeadingZero() has not been implemented.');
  }

  Future<bool> getItalianLeadingZeroOrDefault() {
    throw UnimplementedError(
        'getItalianLeadingZeroOrDefault() has not been implemented.');
  }

  Future<void> setItalianLeadingZero(bool value) {
    throw UnimplementedError(
        'setItalianLeadingZero() has not been implemented.');
  }

  Future<bool> hasItalianLeadingZero() {
    throw UnimplementedError(
        'hasItalianLeadingZero() has not been implemented.');
  }

  Future<int> italianLeadingZeroCount() {
    throw UnimplementedError(
        'italianLeadingZeroCount() has not been implemented.');
  }

  Future<void> clearItalianLeadingZero() {
    throw UnimplementedError(
        'clearItalianLeadingZero() has not been implemented.');
  }

  Future<int> getNumberOfLeadingZeros() {
    throw UnimplementedError(
        'getNumberOfLeadingZeros() has not been implemented.');
  }

  Future<int> getNumberOfLeadingZerosOrDefault() {
    throw UnimplementedError(
        'getNumberOfLeadingZerosOrDefault() has not been implemented.');
  }

  Future<void> setNumberOfLeadingZeros(int value) {
    throw UnimplementedError(
        'setNumberOfLeadingZeros() has not been implemented.');
  }

  Future<bool> hasNumberOfLeadingZeros() {
    throw UnimplementedError(
        'hasNumberOfLeadingZeros() has not been implemented.');
  }

  Future<int> numberOfLeadingZerosCount() {
    throw UnimplementedError(
        'numberOfLeadingZerosCount() has not been implemented.');
  }

  Future<void> clearNumberOfLeadingZeros() {
    throw UnimplementedError(
        'clearNumberOfLeadingZeros() has not been implemented.');
  }

  Future<String> getRawInput() {
    throw UnimplementedError('getRawInput() has not been implemented.');
  }

  Future<String> getRawInputOrDefault() {
    throw UnimplementedError(
        'getRawInputOrDefault() has not been implemented.');
  }

  Future<void> setRawInput(String value) {
    throw UnimplementedError('setRawInput() has not been implemented.');
  }

  Future<bool> hasRawInput() {
    throw UnimplementedError('hasRawInput() has not been implemented.');
  }

  Future<int> rawInputCount() {
    throw UnimplementedError('rawInputCount() has not been implemented.');
  }

  Future<void> clearRawInput() {
    throw UnimplementedError('clearRawInput() has not been implemented.');
  }

  Future<CountryCodeSource> getCountryCodeSource() {
    throw UnimplementedError(
        'getCountryCodeSource() has not been implemented.');
  }

  Future<CountryCodeSource> getCountryCodeSourceOrDefault() {
    throw UnimplementedError(
        'getCountryCodeSourceOrDefault() has not been implemented.');
  }

  Future<void> setCountryCodeSource(CountryCodeSource value) {
    throw UnimplementedError(
        'setCountryCodeSource() has not been implemented.');
  }

  Future<bool> hasCountryCodeSource() {
    throw UnimplementedError(
        'hasCountryCodeSource() has not been implemented.');
  }

  Future<int> countryCodeSourceCount() {
    throw UnimplementedError(
        'countryCodeSourceCount() has not been implemented.');
  }

  Future<void> clearCountryCodeSource() {
    throw UnimplementedError(
        'clearCountryCodeSource() has not been implemented.');
  }

  Future<String> getPreferredDomesticCarrierCode() {
    throw UnimplementedError(
        'getPreferredDomesticCarrierCode() has not been implemented.');
  }

  Future<String> getPreferredDomesticCarrierCodeOrDefault() {
    throw UnimplementedError(
        'getPreferredDomesticCarrierCodeOrDefault() has not been implemented.');
  }

  Future<void> setPreferredDomesticCarrierCode(String value) {
    throw UnimplementedError(
        'setPreferredDomesticCarrierCode() has not been implemented.');
  }

  Future<bool> hasPreferredDomesticCarrierCode() {
    throw UnimplementedError(
        'hasPreferredDomesticCarrierCode() has not been implemented.');
  }

  Future<int> preferredDomesticCarrierCodeCount() {
    throw UnimplementedError(
        'preferredDomesticCarrierCodeCount() has not been implemented.');
  }

  Future<void> clearPreferredDomesticCarrierCode() {
    throw UnimplementedError(
        'clearPreferredDomesticCarrierCode() has not been implemented.');
  }
}
