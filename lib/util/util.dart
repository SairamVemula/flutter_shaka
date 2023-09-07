@JS('shaka.util')
library shaka.util;

// ignore: depend_on_referenced_packages
import 'dart:typed_data';

import 'package:js/js.dart';

@JS('FairPlayUtils')
class FairPlayUtils {
  external static initDataTransform(
      Uint8List initData, dynamic spcUrl, Uint8List cert);
}

@JS('StringUtils')
class StringUtils {
  external static String fromBytesAutoDetect(Uint8List data);
  external static Uint8List toUTF8(String data);
  external static String fromUTF8(Uint8List data);
}

@JS('Uint8ArrayUtils')
class Uint8ArrayUtils {
  external static String toStandardBase64(Uint8List data);
  external static Uint8List fromBase64(String data);
}

/// https://shaka-player-demo.appspot.com/docs/api/shaka.util.Error.html
@JS('Error')
class Error {
  @JS('Code')
  external static dynamic get codes;

  @JS('Category')
  external static dynamic get categories;

  @JS('Severity')
  external static dynamic get severities;

  external int get code;
  external int get category;
  external int get severity;
}
