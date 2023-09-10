@JS('shaka.extern')
library shaka.extern;

import 'package:js/js.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.InitDataTransform
@JS('InitDataTransform')
class InitDataTransform {
  ///	string		The language code for the stream.
  external String language;

  ///	string		The role name for the stream. If the stream has no role, role will be ''.
  external String role;

  ///	string	<nullable>
  /// The label of the audio stream, if it has one.
  external String label;
}
