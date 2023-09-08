// ignore_for_file: non_constant_identifier_names

@JS('shaka.extern')
library shaka.extern;

import 'dart:js';
import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.TextDisplayer
@JS('TextDisplayer')
class TextDisplayer {
  TextDisplayer();

  ///Append given text cues to the list of cues to be displayed.
  external void append(JsArray<dynamic> cues); //TODO: shaka.text.Cue
  /// Request that this object be destroyed, releasing all resources and shutting down all operations. Returns a Promise which is resolved when destruction is complete. This Promise should never be rejected.
  external JSPromise destroy();

  ///
  external bool isTextVisible();

  ///
  external bool remove(num startTime, num endTime);

  /// Set text visibility.
  external bool setTextVisibility(bool on);

  /// A factory for creating a TextDisplayer.
  external static JsFunction Factory();
}
