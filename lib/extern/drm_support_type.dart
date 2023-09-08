@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.DrmSupportType
@JS('DrmSupportType')
class DrmSupportType {
  /// Whether this key system supports persistent state.
  external bool persistentState;
}
