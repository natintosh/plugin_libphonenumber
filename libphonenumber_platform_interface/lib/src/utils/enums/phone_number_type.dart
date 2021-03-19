/// /**
///  * Type of phone numbers.
///  *
///  * @enum {number}
///  */
/// i18n.phonenumbers.PhoneNumberType = {
///   FIXED_LINE: 0,
///   MOBILE: 1,
///   // In some regions (e.g. the USA), it is impossible to distinguish between
///   // fixed-line and mobile numbers by looking at the phone number itself.
///   FIXED_LINE_OR_MOBILE: 2,
///   // Freephone lines
///   TOLL_FREE: 3,
///   PREMIUM_RATE: 4,
///   // The cost of this call is shared between the caller and the recipient, and
///   // is hence typically less than PREMIUM_RATE calls. See
///   // http://en.wikipedia.org/wiki/Shared_Cost_Service for more information.
///   SHARED_COST: 5,
///   // Voice over IP numbers. This includes TSoIP (Telephony Service over IP).
///   VOIP: 6,
///   // A personal number is associated with a particular person, and may be routed
///   // to either a MOBILE or FIXED_LINE number. Some more information can be found
///   // here: http://en.wikipedia.org/wiki/Personal_Numbers
///   PERSONAL_NUMBER: 7,
///   PAGER: 8,
///   // Used for 'Universal Access Numbers' or 'Company Numbers'. They may be
///   // further routed to specific offices, but allow one number to be used for a
///   // company.
///   UAN: 9,
///   // Used for 'Voice Mail Access Numbers'.
///   VOICEMAIL: 10,
///   // A phone number is of type UNKNOWN when it does not fit any of the known
///   // patterns for a specific region.
///   UNKNOWN: -1
/// };

enum PhoneNumberType {
  FIXED_LINE, // : 0,
  MOBILE, //: 1,
  FIXED_LINE_OR_MOBILE, //: 2,
  TOLL_FREE, //: 3,
  PREMIUM_RATE, //: 4,
  SHARED_COST, //: 5,
  VOIP, //: 6,
  PERSONAL_NUMBER, //: 7,
  PAGER, //: 8,
  UAN, //: 9,
  VOICEMAIL, //: 10,
  UNKNOWN, //: -1
}

class PhoneNumberTypeUtil {
  static PhoneNumberType getType(int? value) {
    switch (value) {
      case 0:
        return PhoneNumberType.FIXED_LINE;
      case 1:
        return PhoneNumberType.MOBILE;
      case 2:
        return PhoneNumberType.FIXED_LINE_OR_MOBILE;
      case 3:
        return PhoneNumberType.TOLL_FREE;
      case 4:
        return PhoneNumberType.PREMIUM_RATE;
      case 5:
        return PhoneNumberType.SHARED_COST;
      case 6:
        return PhoneNumberType.VOIP;
      case 7:
        return PhoneNumberType.PERSONAL_NUMBER;
      case 8:
        return PhoneNumberType.PAGER;
      case 9:
        return PhoneNumberType.UAN;
      case 10:
        return PhoneNumberType.VOICEMAIL;
      default:
        return PhoneNumberType.UNKNOWN;
    }
  }
}

extension phonenumbertypeproperties on PhoneNumberType {
  int get value {
    switch (this) {
      case PhoneNumberType.FIXED_LINE:
        return 0;
      case PhoneNumberType.MOBILE:
        return 1;
      case PhoneNumberType.FIXED_LINE_OR_MOBILE:
        return 2;
      case PhoneNumberType.TOLL_FREE:
        return 3;
      case PhoneNumberType.PREMIUM_RATE:
        return 4;
      case PhoneNumberType.SHARED_COST:
        return 5;
      case PhoneNumberType.VOIP:
        return 6;
      case PhoneNumberType.PERSONAL_NUMBER:
        return 7;
      case PhoneNumberType.PREMIUM_RATE:
        return 8;
      case PhoneNumberType.UAN:
        return 9;
      case PhoneNumberType.VOICEMAIL:
        return 10;
      default:
        return -1;
    }
  }
}
