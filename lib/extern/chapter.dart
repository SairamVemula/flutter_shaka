@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.Chapter
@JS('Chapter')
class Chapter {
  /// The id of the chapter.
  external dynamic id;

  /// The title of the chapter.
  external dynamic title;

  /// 	The time that describes the beginning of the range of the chapter.
  external dynamic startTime;

  /// The time that describes the end of the range of chapter.
  external dynamic endTime;
}
