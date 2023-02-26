// ignore_for_file: constant_identifier_names

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
  UNSPECIFIED(value: 0),
  FROM_NUMBER_WITH_PLUS_SIGN(value: 1),
  FROM_NUMBER_WITH_IDD(value: 5),
  FROM_NUMBER_WITHOUT_PLUS_SIGN(value: 10),
  FROM_DEFAULT_COUNTRY(value: 20);

  const CountryCodeSource({required this.value});

  final int value;

  static CountryCodeSource fromIndex(int? index) {
    return CountryCodeSource.values.singleWhere(
      (element) => element.value == index,
      orElse: () => CountryCodeSource.UNSPECIFIED,
    );
  }
}
