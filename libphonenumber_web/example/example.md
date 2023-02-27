```dart
import 'package:libphonenumber_platform_interface/libphonenumber_platform_interface.dart';

void main() async {
  final instance = LibPhoneNumberPlatform.instance;


  final validPhoneNumber =
      await instance.isValidPhoneNumber('+2348021234567', 'NG');
  final notValidPhoneNumber =
      await instance.isValidPhoneNumber('+2341111111111', 'NG');

  final normalPhoneNumber =
  await instance.normalizePhoneNumber('+234 802 123 4567', 'NG');

  final notNormalPhoneNumber =
  await instance.normalizePhoneNumber('+234 802', 'NG');
  
  final data = await instance.getRegionInfo('+2348021234567', 'NG');

  final regionInfo = RegionInfo.fromJson(data);

  final index = await instance.getNumberType('+2348021234567', 'NG');

  final type = PhoneNumberType.fromIndex(index);

  final formatAsYouType = await instance.formatAsYouType('+2348021234567', isoCode);

  final countries = await instance.getAllCountries();

  final exampleNumber = await instance.getFormattedExampleNumber(
      'NG', PhoneNumberType.MOBILE, PhoneNumberFormat.INTERNATIONAL);


}

```