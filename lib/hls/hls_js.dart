@JS('shaka.hls')
library shaka.hls;

// ignore: depend_on_referenced_packages
import 'dart:js_interop';

import 'package:js/js.dart';

@JS('HlsParser')
class HlsParserJS {
  external HlsParserJS();
  external void configure(config);
  external void onExpirationUpdated(String sessionId, num expiration);
  external JSPromise start(uri, playerInterface);
  external JSPromise stop();
  external void update();
}
