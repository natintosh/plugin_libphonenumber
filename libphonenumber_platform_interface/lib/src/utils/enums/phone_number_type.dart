// ignore_for_file: constant_identifier_names

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
  FIXED_LINE(value: 0), // : 0,
  MOBILE(value: 1), //: 1,
  FIXED_LINE_OR_MOBILE(value: 2), //: 2,
  TOLL_FREE(value: 3), //: 3,
  PREMIUM_RATE(value: 4), //: 4,
  SHARED_COST(value: 5), //: 5,
  VOIP(value: 6), //: 6,
  PERSONAL_NUMBER(value: 7), //: 7,
  PAGER(value: 8), //: 8,
  UAN(value: 9), //: 9,
  VOICEMAIL(value: 10), //: 10,
  UNKNOWN(value: -1); //: -1

  const PhoneNumberType({required this.value});

  final int value;

  static PhoneNumberType fromIndex(int? index) {
    return PhoneNumberType.values.singleWhere(
      (element) => element.value == index,
      orElse: () => PhoneNumberType.UNKNOWN,
    );
  }
}
