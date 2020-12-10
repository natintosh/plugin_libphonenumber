import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:libphonenumber_platform_interface/libraryphonenumber_platform_interface.dart';
import 'package:libphonenumber_web/src/interop/libphonenumber_interop.dart';

class PhoneNumberPlugin extends PhoneNumberPlatform {
  PhoneNumberJsImpl jsImpl;

  static void registerWith(Registrar registrar) {
    final MethodChannel methodChannel = MethodChannel(
      'plugin.libraryphonenumber',
      const StandardMethodCodec(),
      registrar.messenger,
    );
    final PhoneNumberPlugin instance = PhoneNumberPlugin();
    PhoneNumberPlatform.instance = instance;
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
  Future<void> clearCountryCode() async {
    return jsImpl.clearCountryCode();
  }

  @override
  Future<void> clearCountryCodeSource() async {
    return jsImpl.clearCountryCodeSource();
  }

  @override
  Future<void> clearExtension() async {
    return jsImpl.clearExtension();
  }

  @override
  Future<void> clearItalianLeadingZero() async {
    return jsImpl.clearItalianLeadingZero();
  }

  @override
  Future<void> clearNationalNumber() async {
    return jsImpl.clearNationalNumber();
  }

  @override
  Future<void> clearNumberOfLeadingZeros() async {
    return jsImpl.clearNumberOfLeadingZeros();
  }

  @override
  Future<void> clearPreferredDomesticCarrierCode() async {
    return jsImpl.clearPreferredDomesticCarrierCode();
  }

  @override
  Future<void> clearRawInput() async {
    return jsImpl.clearRawInput();
  }

  @override
  Future<int> countryCodeCount() async {
    return jsImpl.countryCodeCount();
  }

  @override
  Future<int> countryCodeSourceCount() async {
    return jsImpl.countryCodeSourceCount();
  }

  @override
  Future<int> extensionCount() async {
    return jsImpl.extensionCount();
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
  Future<CountryCodeSource> getCountryCodeSource() async {
    int value = jsImpl.getCountryCodeSource();
    return CountryCodeSourceUtil.getType(value);
  }

  @override
  Future<CountryCodeSource> getCountryCodeSourceOrDefault() async {
    int value = jsImpl.getCountryCodeSourceOrDefault();
    return CountryCodeSourceUtil.getType(value);
  }

  @override
  Future<String> getExtension() async {
    return jsImpl.getExtension();
  }

  @override
  Future<String> getExtensionOrDefault() async {
    return jsImpl.getExtensionOrDefault();
  }

  @override
  Future<bool> getItalianLeadingZero() async {
    return jsImpl.getItalianLeadingZero();
  }

  @override
  Future<bool> getItalianLeadingZeroOrDefault() async {
    return jsImpl.getItalianLeadingZero();
  }

  @override
  Future<int> getNationalNumber() async {
    return jsImpl.getNationalNumber();
  }

  @override
  Future<int> getNationalNumberOrDefault() async {
    return jsImpl.getNationalNumberOrDefault();
  }

  @override
  Future<int> getNumberOfLeadingZeros() async {
    return jsImpl.getNumberOfLeadingZeros();
  }

  @override
  Future<int> getNumberOfLeadingZerosOrDefault() async {
    return jsImpl.getNumberOfLeadingZerosOrDefault();
  }

  @override
  Future<String> getPreferredDomesticCarrierCode() async {
    return jsImpl.getPreferredDomesticCarrierCode();
  }

  @override
  Future<String> getPreferredDomesticCarrierCodeOrDefault() async {
    return jsImpl.getPreferredDomesticCarrierCodeOrDefault();
  }

  @override
  Future<String> getRawInput() async {
    return jsImpl.getRawInput();
  }

  @override
  Future<String> getRawInputOrDefault() async {
    return jsImpl.getRawInputOrDefault();
  }

  @override
  Future<bool> hasCountryCode() async {
    return jsImpl.hasCountryCode();
  }

  @override
  Future<bool> hasCountryCodeSource() async {
    return jsImpl.hasCountryCode();
  }

  @override
  Future<bool> hasExtension() async {
    return jsImpl.hasExtension();
  }

  @override
  Future<bool> hasItalianLeadingZero() async {
    return jsImpl.hasItalianLeadingZero();
  }

  @override
  Future<bool> hasNationalNumber() async {
    return jsImpl.hasNationalNumber();
  }

  @override
  Future<bool> hasNumberOfLeadingZeros() async {
    return jsImpl.hasNumberOfLeadingZeros();
  }

  @override
  Future<bool> hasPreferredDomesticCarrierCode() async {
    return jsImpl.hasPreferredDomesticCarrierCode();
  }

  @override
  Future<bool> hasRawInput() async {
    return jsImpl.hasRawInput();
  }

  @override
  Future<int> italianLeadingZeroCount() async {
    return jsImpl.italianLeadingZeroCount();
  }

  @override
  Future<int> nationalNumberCount() async {
    return jsImpl.nationalNumberCount();
  }

  @override
  Future<int> numberOfLeadingZerosCount() async {
    return jsImpl.numberOfLeadingZerosCount();
  }

  @override
  Future<int> preferredDomesticCarrierCodeCount() async {
    return jsImpl.preferredDomesticCarrierCodeCount();
  }

  @override
  Future<int> rawInputCount() async {
    return jsImpl.rawInputCount();
  }

  @override
  Future<void> setCountryCode(int value) async {
    return jsImpl.setCountryCode(value);
  }

  @override
  Future<void> setCountryCodeSource(CountryCodeSource value) async {
    return jsImpl.setCountryCodeSource(value.index);
  }

  @override
  Future<void> setExtension(String value) async {
    return jsImpl.setExtension(value);
  }

  @override
  Future<void> setItalianLeadingZero(bool value) async {
    return jsImpl.setItalianLeadingZero(value);
  }

  @override
  Future<void> setNationalNumber(int value) async {
    return jsImpl.setNationalNumber(value);
  }

  @override
  Future<void> setNumberOfLeadingZeros(int value) async {
    return jsImpl.setNumberOfLeadingZeros(value);
  }

  @override
  Future<void> setPreferredDomesticCarrierCode(String value) async {
    return jsImpl.setPreferredDomesticCarrierCode(value);
  }

  @override
  Future<void> setRawInput(String value) async {
    return jsImpl.setRawInput(value);
  }
}
