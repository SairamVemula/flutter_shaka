@JS('shaka.util')
library shaka.util;

// ignore: depend_on_referenced_packages
import 'dart:js_interop';

import 'package:js/js.dart';

@JS('FairPlayUtils')
class FairPlayUtils {
  external static initDataTransform(
      JSUint8Array initData, dynamic spcUrl, JSUint8Array cert);
}

@JS('StringUtils')
class StringUtils {
  external static String fromBytesAutoDetect(JSUint8Array data);
  external static JSUint8Array toUTF8(String data);
  external static String fromUTF8(JSUint8Array data);
}

@JS('Uint8ArrayUtils')
class Uint8ArrayUtils {
  external static String toBase64(JSUint8Array data);
  external static String toStandardBase64(JSUint8Array data);
  external static JSUint8Array fromBase64(String data);
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

  external num get code;
  external num get category;
  external num get severity;
}
