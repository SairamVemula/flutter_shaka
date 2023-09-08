@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.MediaSourceConfiguration
@JS('MediaSourceConfiguration')
class MediaSourceConfiguration {
  ///	string	Some platforms may need to pass features when initializing the sourceBuffer. This string is ultimately appended to MIME types in addSourceBuffer().
  external String sourceBufferExtraFeatures;

  ///	boolean	If this is true, we will transmux AAC and TS content even if not strictly necessary for the assets to be played. This value defaults to false.
  external bool forceTransmux;

  ///	boolean	If true, will apply a work-around for non-encrypted init segments on encrypted content for some platforms.
  ///
  /// See https://github.com/shaka-project/shaka-player/issues/2759.
  ///
  /// If you know you don't need this, you canset this value to false to gain a few milliseconds on loading time and seek time.
  ///
  /// This value defaults to true.
  external bool insertFakeEncryptionInInit;
}
