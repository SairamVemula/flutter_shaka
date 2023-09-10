@JS('shaka.extern')
library shaka.extern;

// ignore: depend_on_referenced_packages
import 'dart:js_interop';
import 'package:js/js.dart';

import 'dart:js';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.Request
@JS('Request')
class Request {
  external JsArray<String> uris;
  external String method;
  external JSUint8Array body;
  external JsObject headers;
  external bool allowCrossSiteCredentials;
  external String? licenseRequestType;
  external String? sessionId;
  external String? initDataType;
  external JSUint8Array initData;
}
