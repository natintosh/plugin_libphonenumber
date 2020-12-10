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
  TOLL_FREE,
  STANDARD_RATE,
  PREMIUM_RATE,
  UNKNOWN_COST,
}

class ShortNumberCostUtil {
  static ShortNumberCost getType(int value) {
    switch (value) {
      case 0:
        return ShortNumberCost.TOLL_FREE;
        break;
      case 1:
        return ShortNumberCost.STANDARD_RATE;
        break;
      case 2:
        return ShortNumberCost.PREMIUM_RATE;
        break;
      default:
        return ShortNumberCost.UNKNOWN_COST;
        break;
    }
  }
}

extension shortnumbercostproperties on ShortNumberCost {
  int get value {
    switch (this) {
      case ShortNumberCost.TOLL_FREE:
        return 0;
        break;
      case ShortNumberCost.STANDARD_RATE:
        return 1;
        break;
      case ShortNumberCost.PREMIUM_RATE:
        return 2;
        break;
      default:
        return 3;
        break;
    }
  }
}
