@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';
//class JsArray<E> extends JsObject with ListMixin<E>

import 'dart:js';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.SupportType
@JS('SupportType')
class SupportType {
  /// A map of supported manifest types. The keys are manifest MIME types and file extensions.
  external JsObject manifest;

  /// Object.<string, boolean>	A map of supported media types. The keys are media MIME types.
  external JsObject media;

  /// Object.<string, ?shaka.extern.DrmSupportType>	A map of supported key systems. The keys are the key system names. The value is null if it is not supported. Key systems not probed will not be in this dictionary.
  external JsObject drm;
}
