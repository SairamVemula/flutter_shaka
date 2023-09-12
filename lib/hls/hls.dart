library shaka.hls;

import 'dart:js_interop';

import 'package:flutter_shaka/hls/hls_js.dart';

class HlsParser {
  HlsParserJS _hlsParser;
  HlsParser() : _hlsParser = HlsParserJS();
  void configure(config) => _hlsParser.configure(config);
  void onExpirationUpdated(String sessionId, num expiration) =>
      _hlsParser.onExpirationUpdated(sessionId, expiration);
  Future start(uri, playerInterface) =>
      _hlsParser.start(uri, playerInterface).toDart;
  Future stop() => _hlsParser.stop().toDart;
  void update() => _hlsParser.update();
}
