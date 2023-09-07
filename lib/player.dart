@JS('shaka')
library shaka;

import 'dart:html' as html;

// ignore: depend_on_referenced_packages
import 'package:js/js.dart';
import 'net/net.dart';

@JS('shaka.Player')
class Player {
  external Player(html.VideoElement element);

  external static bool isBrowserSupported();
  @JS('shaka.Player.configure')
  external bool configure(dynamic config, [dynamic value]);
  external Future<void> load(String src);
  external Future<void> destroy();

  external NetworkingEngine getNetworkingEngine();

  external void addEventListener(String event, Function callback);
}
