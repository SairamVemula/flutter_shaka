@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';
import 'package:js/js.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.DrmSessionMetadata
@JS('DrmSessionMetadata')
class DrmSessionMetadata {
  ///		Session id
  external String sessionId;

  ///		Session type
  external String sessionType;

  /// Uint8Array	<nullable>
  /// Initialization data in the format indicated by initDataType.
  external JSUint8Array? initData;

  ///		A string to indicate what format initData is in.
  external String initDataType;
}
