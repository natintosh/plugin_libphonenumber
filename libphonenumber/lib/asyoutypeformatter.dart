import 'package:libphonenumber_platform_interface/asyoutypeformatter_platform_interface.dart';

class AsYouTypeFormatter {
  factory AsYouTypeFormatter() {
    if (_singleton == null) {
      _singleton = AsYouTypeFormatter._();
    }
    return _singleton;
  }

  AsYouTypeFormatter._();

  static AsYouTypeFormatter _singleton;

  AsYouTypeFormatterPlatform get _platform =>
      AsYouTypeFormatterPlatform.instance;

  Future<void> initialize(String regionCode) async {
    _platform.initialize(regionCode);
  }

  Future<void> clear() {
    return _platform.clear();
  }

  Future<String> inputDigit(String nextChar) {
    return _platform.inputDigit(nextChar);
  }

  Future<String> inputDigitAndRememberPosition(String nextChar) {
    return _platform.inputDigitAndRememberPosition(nextChar);
  }

  Future<int> getRememberedPosition(String nextChar) {
    return _platform.getRememberedPosition();
  }
}
