@JS('shaka.extern')
library shaka.extern;

import 'package:js/js.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.AdsConfiguration
@JS('AdsConfiguration')
class AdsConfiguration {
  ///	boolean	If this is true, we create a custom playhead tracker for Client Side. This is useful because it allows you to implement the use of IMA on platforms that do not support multiple video elements. This value defaults to false.
  external bool customPlayheadTracker;
}
