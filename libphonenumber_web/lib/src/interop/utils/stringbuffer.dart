// ignore_for_file: annotate_overrides

@JS()
library stringbuffer;

import 'package:js/js.dart';

@JS('StringBuffer')
class StringBufferJsImpl {
  external StringBufferJsImpl(dynamic optA1, [dynamic varArgs = '']);

  @JS('set')
  external void set(dynamic s);

  @JS('append')
  external StringBufferJsImpl append(
      dynamic a1, dynamic optA2, dynamic varArgs);

  @JS('clear')
  external void clear();

  @JS('getLength')
  external int getLength();

  @JS('toString')
  external String toString();
}
