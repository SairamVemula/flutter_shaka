@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.BufferedRange
@JS('BufferedRange')
class BufferedRange {
  /// The start time of the range, in seconds.
  external num start;

  /// The end time of the range, in seconds.
  external num end;
}
