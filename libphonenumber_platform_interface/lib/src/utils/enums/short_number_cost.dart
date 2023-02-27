// ignore_for_file: constant_identifier_names

///
/// * @enum {number} Cost categories of short numbers.
/// */
/// i18n.phonenumbers.ShortNumberInfo.ShortNumberCost = {
///  TOLL_FREE: 0,
///  STANDARD_RATE: 1,
///  PREMIUM_RATE: 2,
///  UNKNOWN_COST: 3
/// };

enum ShortNumberCost {
  TOLL_FREE(value: 0),
  STANDARD_RATE(value: 1),
  PREMIUM_RATE(value: 2),
  UNKNOWN_COST(value: 3);

  const ShortNumberCost({required this.value});

  final int value;

  static ShortNumberCost fromIndex(int? index) {
    return ShortNumberCost.values.singleWhere(
      (element) => element.value == index,
      orElse: () => ShortNumberCost.UNKNOWN_COST,
    );
  }
}
