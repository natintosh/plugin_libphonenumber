/// /**
///  * INTERNATIONAL and NATIONAL formats are consistent with the definition in
///  * ITU-T Recommendation E123. However we follow local conventions such as
///  * using '-' instead of whitespace as separators. For example, the number of the
///  * Google Switzerland office will be written as '+41 44 668 1800' in
///  * INTERNATIONAL format, and as '044 668 1800' in NATIONAL format. E164 format
///  * is as per INTERNATIONAL format but with no formatting applied, e.g.
///  * '+41446681800'. RFC3966 is as per INTERNATIONAL format, but with all spaces
///  * and other separating symbols replaced with a hyphen, and with any phone
///  * number extension appended with ';ext='. It also will have a prefix of 'tel:'
///  * added, e.g. 'tel:+41-44-668-1800'.
///  *
///  * Note: If you are considering storing the number in a neutral format, you are
///  * highly advised to use the PhoneNumber class.
///  * @enum {number}
///  */
/// i18n.phonenumbers.PhoneNumberFormat = {
///   E164: 0,
///   INTERNATIONAL: 1,
///   NATIONAL: 2,
///   RFC3966: 3
/// };

enum PhoneNumberFormat {
  E164, //: 0,
  INTERNATIONAL, //: 1,
  NATIONAL, //: 2,
  RFC3966, //: 3
}

class PhoneNumberFormatUtil {
  static PhoneNumberFormat getType(int value) {
    switch (value) {
      case 0:
        return PhoneNumberFormat.E164;
      case 1:
        return PhoneNumberFormat.INTERNATIONAL;        
      case 2:
        return PhoneNumberFormat.NATIONAL;
      case 3:
        return PhoneNumberFormat.RFC3966;
      default:
        return PhoneNumberFormat.E164;
    }
  }
}

extension phonenumberformatproperties on PhoneNumberFormat {
  int get value {
    switch (this) {
      case PhoneNumberFormat.E164:
        return 0;
        
      case PhoneNumberFormat.INTERNATIONAL:
        return 1;
        
      case PhoneNumberFormat.NATIONAL:
        return 2;
        
      case PhoneNumberFormat.RFC3966:
        return 3;
        
      default:
        return 0;
        
    }
  }
}
