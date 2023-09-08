// ignore_for_file: non_constant_identifier_names

@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.config.html#.AutoShowText
@JS('AutoShowText')
class AutoShowText {
  ///	0	number	Never show text automatically on startup.
  external static num NEVER;

  ///	1	number	Always show text automatically on startup.
  external static num ALWAYS;

  ///	2	number	Show text automatically on startup if it matches the preferred text language.
  external static num IF_PREFERRED_TEXT_LANGUAGE;

  ///	3	number	Show text automatically on startup if we think that subtitles may be needed. This is specifically if the selected text matches the preferred text language AND is different from the initial audio language. (Example: You prefer English, but the audio is only available in French, so English subtitles should be enabled by default.)
  external static num IF_SUBTITLES_MAY_BE_NEEDED;
}
