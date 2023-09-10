@JS('shaka.hls')
library shaka.hls;

// ignore: depend_on_referenced_packages
import 'package:js/js.dart';

@JS('HlsParser')
class HlsParser {
  external HlsParser();
  external void configure(config);
  external void onExpirationUpdated(String sessionId, num expiration);
  external Future start(uri, playerInterface);
  external Future stop();
  external void update();
}
