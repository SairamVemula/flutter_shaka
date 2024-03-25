@JS('shaka.extern')
library shaka.extern;

import 'dart:js';
import 'package:js/js.dart';

import 'buffered_range.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.BufferedInfo
@JS('BufferedInfo')
class BufferedInfo {
  /// The combined audio/video buffered ranges, reported by video.buffered.
  external List<BufferedRange> total;

  /// The buffered ranges for audio content.
  external List<BufferedRange> audio;

  /// The buffered ranges for video content.
  external List<BufferedRange> video;

  /// The buffered ranges for text content.
  external List<BufferedRange> text;
}
