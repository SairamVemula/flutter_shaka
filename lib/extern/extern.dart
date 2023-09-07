@JS('shaka')
library shaka;

// ignore: depend_on_referenced_packages
import 'package:js/js.dart';
import 'dart:js';
import 'dart:typed_data';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.Request
@JS('extern.Request')
class Request {
  external List<String> uris;
  external String method;
  external Uint8List body;
  external JsObject headers;
  external bool allowCrossSiteCredentials;
  external String? licenseRequestType;
  external String? sessionId;
  external String? initDataType;
  external Uint8List initData;
}

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.Response
@JS('extern.Request')
class Response {
  external String uri;
  external String originalUri;
  external Uint8List data;
  external JsObject headers;
  external bool status;
  external int? timeMs;
  external bool? fromCache;
}

typedef RequestFilter = void Function(int requestType, Request request);
