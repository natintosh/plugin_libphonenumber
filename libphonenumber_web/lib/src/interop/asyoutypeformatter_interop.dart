part of libphonenumber_interop;

@JS('AsYouTypeFormatter')
class AsYouTypeFormatterJsImpl {
  external AsYouTypeFormatterJsImpl(String regionCode);

  @JS('clear')
  external void clear();

  @JS('inputDigit')
  external String inputDigit(String nextChar);

  @JS('inputDigitAndRememberPosition')
  external String inputDigitAndRememberPosition(String nextChar);

  @JS('getRememberedPosition')
  external int getRememberedPosition();
}
