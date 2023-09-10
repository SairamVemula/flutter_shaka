@JS('shaka.extern')
library shaka.extern;

// ignore: depend_on_referenced_packages
import 'dart:js_interop';
import 'package:js/js.dart';

import 'dart:js';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.Response
@JS('Response')
class Response {
  external String uri;
  external String originalUri;
  external JSUint8Array data;
  external JsObject headers;
  external bool status;
  external int? timeMs;
  external bool? fromCache;
}
