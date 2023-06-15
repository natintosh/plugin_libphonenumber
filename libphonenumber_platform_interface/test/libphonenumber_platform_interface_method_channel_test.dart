import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:libphonenumber_platform_interface/libphonenumber_platform_interface.dart';
import 'package:libphonenumber_platform_interface/src/method_channel/libhonenumber_method_channel.dart';

void main() {
  MethodChannelLibPhoneNumber platform = MethodChannelLibPhoneNumber();
  const MethodChannel channel = MethodChannel('plugin.libphonenumber');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      switch (methodCall.method) {
        case 'formatAsYouType':
          return '+234 808 012 3456';
        case 'getNumberType':
          return 1;
        case 'getRegionInfo':
          return <String, dynamic>{
            'isoCode': 'NG',
            'regionCode': '+234',
            'formattedPhoneNumber': '+2348080123456',
          };
        case 'isValidPhoneNumber':
          return true;
        case 'normalizePhoneNumber':
          return '+2348080123456';
        case 'getAllCountries':
          return ['GH', 'NG', 'US', 'UK', 'ZW'];
        case 'getFormattedExampleNumber':
          return '+234 808 012 3456';
      }
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('TEST formatAsYouType', () async {
    expect(await platform.formatAsYouType('+2348080123456', 'NG'),
        '+234 808 012 3456');
  });

  test('TEST getNumberType', () async {
    final type = await platform.getNumberType('+2348080123456', 'NG');

    expect(PhoneNumberType.fromIndex(type), PhoneNumberType.MOBILE);
  });

  test('TEST getRegionInfo', () async {
    final data = await platform.getRegionInfo('+2348080123456', 'NG');
    final regionInfo = RegionInfo.fromJson(data);

    expect(regionInfo.isoCode, 'NG');
    expect(regionInfo.regionPrefix, '+234');
    expect(regionInfo.formattedPhoneNumber, '+2348080123456');
  });

  test('TEST isValidPhoneNumber', () async {
    final isValid = await platform.isValidPhoneNumber('+2348080123456', 'NG');

    expect(isValid, true);
  });

  test('TEST normalizePhoneNumber', () async {
    final normalizedNumber =
        await platform.normalizePhoneNumber('+2348080123456', 'NG', PhoneNumberFormat.E164);

    expect(normalizedNumber, '+2348080123456');
  });

  test('TEST getAllCountries', () async {
    final countries = await platform.getAllCountries();

    expect(countries?.first, 'GH');
    expect(countries?.length, 5);
    expect(countries?.last, 'ZW');
    expect(countries?.contains('NG'), true);
  });
}
