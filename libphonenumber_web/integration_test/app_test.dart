import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:libphonenumber_platform_interface/libphonenumber_platform_interface.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  //+234 802 123 4567
  group('end-to-end test', () {
    test("libphonenumber-web: isValidPhoneNumber", () async {
      final instance = LibPhoneNumberPlatform.instance;

      final validPhoneNumber =
          await instance.isValidPhoneNumber('+2348021234567', 'NG');
      final notValidPhoneNumber =
          await instance.isValidPhoneNumber('+2341111111111', 'NG');

      expect(validPhoneNumber, true);
      expect(notValidPhoneNumber, false);
    });

    test("libphonenumber-web: normalizePhoneNumber", () async {
      final instance = LibPhoneNumberPlatform.instance;

      final normalPhoneNumber =
          await instance.normalizePhoneNumber('+234 802 123 4567', 'NG', PhoneNumberFormat.NATIONAL);

      final notNormalPhoneNumber =
          await instance.normalizePhoneNumber('+234 802', 'NG', PhoneNumberFormat.NATIONAL);

      expect(normalPhoneNumber, '+2348021234567');
      expect(notNormalPhoneNumber, '+234802');
    });

    test("libphonenumber-web: getRegionInfo", () async {
      final instance = LibPhoneNumberPlatform.instance;

      final data = await instance.getRegionInfo('+2348021234567', 'NG');

      final regionInfo = RegionInfo.fromJson(data);

      expect(regionInfo.regionPrefix, '234');
      expect(regionInfo.isoCode, 'NG');
      expect(regionInfo.formattedPhoneNumber, '0802 123 4567');
    });

    test("libphonenumber-web: getNumberType", () async {
      final instance = LibPhoneNumberPlatform.instance;

      final index = await instance.getNumberType('+2348021234567', 'NG');

      final type = PhoneNumberType.fromIndex(index);

      expect(type, PhoneNumberType.MOBILE);
    });

    test("libphonenumber-web: formatAsYouType", () async {
      final instance = LibPhoneNumberPlatform.instance;

      const isoCode = 'NG';

      expect(await instance.formatAsYouType('+', isoCode), '+');
      expect(await instance.formatAsYouType('+2', isoCode), '+2');
      expect(await instance.formatAsYouType('+23', isoCode), '+23');
      expect(await instance.formatAsYouType('+234', isoCode), '+234');
      expect(await instance.formatAsYouType('+2348', isoCode), '+234 8');
      expect(await instance.formatAsYouType('+23480', isoCode), '+234 80');
      expect(await instance.formatAsYouType('+234802', isoCode), '+234 802');
      expect(await instance.formatAsYouType('+2348021', isoCode), '+234 802 1');
      expect(
          await instance.formatAsYouType('+23480212', isoCode), '+234 802 12');
      expect(await instance.formatAsYouType('+234802123', isoCode),
          '+234 802 123');
      expect(await instance.formatAsYouType('+2348021234', isoCode),
          '+234 802 123 4');
      expect(await instance.formatAsYouType('+23480212345', isoCode),
          '+234 802 123 45');
      expect(await instance.formatAsYouType('+234802123456', isoCode),
          '+234 802 123 456');
      expect(await instance.formatAsYouType('+2348021234567', isoCode),
          '+234 802 123 4567');

      final index = await instance.getNumberType('+2348021234567', 'NG');

      final type = PhoneNumberType.fromIndex(index);

      expect(type, PhoneNumberType.MOBILE);
    });

    test("libphonenumber-web: getAllCountries", () async {
      final instance = LibPhoneNumberPlatform.instance;

      final countries = await instance.getAllCountries();

      expect(countries?.isEmpty, false);
      expect(countries?.contains('NG'), true);
    });

    test("libphonenumber-web: getFormattedExampleNumber", () async {
      final instance = LibPhoneNumberPlatform.instance;

      final exampleNumber = await instance.getFormattedExampleNumber(
          'NG', PhoneNumberType.MOBILE, PhoneNumberFormat.INTERNATIONAL);

      expect(exampleNumber?.isEmpty, false);
      expect(exampleNumber?.contains('+234'), true);

      // Here we don't know what the example number would be but we know the format
      // so we replace the digits and check if the format is the same
      final replace = exampleNumber?.replaceAll(RegExp(r'\d'), '0');

      expect(replace, '+000 000 000 0000');
    });
  });
}
