@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';
import 'package:js/js.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.InitDataOverride
@JS('InitDataOverride')
class InitDataOverride {
  external JSUint8Array initData;

  /// Uint8Array		Initialization data in the format indicated by initDataType.
  ///		A string to indicate what format initData is in.
  external String initDataType;

  /// The key Id that corresponds to this initData.
  external String? keyId;
}
