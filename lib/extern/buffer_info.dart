@JS('shaka.extern')
library shaka.extern;

import 'dart:js';
import 'dart:js_interop';

import 'package:flutter_shaka/extern/buffered_range.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.BufferedInfo
@JS('BufferedInfo')
class BufferedInfo {
  /// The combined audio/video buffered ranges, reported by video.buffered.
  external JsArray<BufferedRange> total;

  /// The buffered ranges for audio content.
  external JsArray<BufferedRange> audio;

  /// The buffered ranges for video content.
  external JsArray<BufferedRange> video;

  /// The buffered ranges for text content.
  external JsArray<BufferedRange> text;
}
