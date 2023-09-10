@JS('shaka.extern')
library shaka.extern;

import 'package:js/js.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.DrmSupportType
@JS('DrmSupportType')
class DrmSupportType {
  /// Whether this key system supports persistent state.
  external bool persistentState;
}
