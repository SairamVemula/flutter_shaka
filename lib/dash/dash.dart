@JS('shaka.dash')
library shaka.dash;

// ignore: depend_on_referenced_packages
import 'package:js/js.dart';

@JS('DashParser')
class DashParser {
  external DashParser();
  external void configure(config);
  external void onExpirationUpdated(String sessionId, int expiration);
  external Future start(uri, playerInterface);
  external Future stop();
  external void update();
}
