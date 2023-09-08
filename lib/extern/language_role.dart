@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.LanguageRole
@JS('LanguageRole')
class LanguageRole {
  ///		The language code for the stream.
  external String language;

  ///		The role name for the stream. If the stream has no role, role will be ''.
  external String role;

  /// The label of the audio stream, if it has one.
  external String? label;
}
