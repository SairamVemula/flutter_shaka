@JS('shaka.dash')
library shaka.dash;

// ignore: depend_on_referenced_packages
import 'dart:js_interop';

@JS('DashParser')
class DashParser {
  external DashParser();
  external void configure(config);
  external void onExpirationUpdated(String sessionId, num expiration);
  external Future start(uri, playernumerface);
  external Future stop();
  external void update();
}
