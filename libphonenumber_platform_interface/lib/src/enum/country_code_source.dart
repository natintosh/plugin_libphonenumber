///
/// * Enumeration CountryCodeSource.
/// * @enum {number}
///
/// i18n.phonenumbers.PhoneNumber.CountryCodeSource = {
///  UNSPECIFIED: 0,
///  FROM_NUMBER_WITH_PLUS_SIGN: 1,
///  FROM_NUMBER_WITH_IDD: 5,
///  FROM_NUMBER_WITHOUT_PLUS_SIGN: 10,
///  FROM_DEFAULT_COUNTRY: 20
/// };

enum CountryCodeSource {
  UNSPECIFIED,
  FROM_NUMBER_WITH_PLUS_SIGN,
  FROM_NUMBER_WITH_IDD,
  FROM_NUMBER_WITHOUT_PLUS_SIGN,
  FROM_DEFAULT_COUNTRY
}

class CountryCodeSourceUtil {
  static CountryCodeSource getType(int value) {
    switch (value) {
      case 1:
        return CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
        break;
      case 5:
        return CountryCodeSource.FROM_NUMBER_WITH_IDD;
        break;
      case 10:
        return CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN;
        break;
      case 20:
        return CountryCodeSource.FROM_DEFAULT_COUNTRY;
        break;
      default:
        return CountryCodeSource.UNSPECIFIED;
        break;
    }
  }
}

extension countrycodesourceproperties on CountryCodeSource {
  int get value {
    switch (this) {
      case CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN:
        return 1;
        break;
      case CountryCodeSource.FROM_NUMBER_WITH_IDD:
        return 5;
        break;
      case CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN:
        return 10;
        break;
      case CountryCodeSource.FROM_DEFAULT_COUNTRY:
        return 20;
        break;
      default:
        return 0;
        break;
    }
  }
}
