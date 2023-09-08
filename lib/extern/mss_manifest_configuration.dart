@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.MssManifestConfiguration
@JS('MssManifestConfiguration')
class MssManifestConfiguration {
  ///	function	Called immediately after the MSS manifest has been parsed into an XMLDocument. Provides a way for applications to perform efficient preprocessing of the manifest.
  external JSFunction manifestPreprocessor;

  ///	boolean	If true, the media segments are appended to the SourceBuffer in "sequence mode" (ignoring their internal timestamps). Defaults to false.
  external bool sequenceMode;

  ///	Object.<string, string>	A map of system id to key system name. Defaults to default key systems mapping handled by Shaka.
  external JSObject keySystemsBySystemId;
}
