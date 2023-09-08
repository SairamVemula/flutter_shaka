@JS('shaka.extern')
library shaka.extern;

import 'dart:js';
import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.DashManifestConfiguration
@JS('DashManifestConfiguration')
class DashManifestConfiguration {
  ///	string	A default clock sync URI to be used with live streams which do not contain any clock sync information. The Date header from this URI will be used to determine the current time.
  external String clockSyncUri;

  ///	boolean	If true will cause DASH parser to ignore DRM information specified by the manifest and treat it as if it signaled no particular key system and contained no init data. Defaults to false if not provided.
  external bool ignoreDrmInfo;

  ///	boolean	If true, xlink-related processing will be disabled. Defaults to false if not provided.
  external bool disableXlinkProcessing;

  ///	boolean	If true, xlink-related errors will result in a fallback to the tag's existing contents. If false, xlink-related errors will be propagated to the application and will result in a playback failure. Defaults to false if not provided.
  external bool xlinkFailGracefully;

  ///	boolean	If true will cause DASH parser to ignore minBufferTime from manifest. It allows player config to take precedence over manifest for rebufferingGoal. Defaults to false if not provided.
  external bool ignoreMinBufferTime;

  ///	boolean	If true, ignore the availabilityStartTime in the manifest and instead use the segments to determine the live edge. This allows us to play streams that have a lot of drift. If false, we can't play content where the manifest specifies segments in the future. Defaults to true.
  external bool autoCorrectDrift;

  ///	number	The maximum number of initial segments to generate for SegmentTemplate with fixed-duration segments. This is limited to avoid excessive memory consumption with very large timeShiftBufferDepth values.
  external num initialSegmentLimit;

  ///	boolean	If true will cause DASH parser to ignore suggestedPresentationDelay from manifest. Defaults to false if not provided.
  external bool ignoreSuggestedPresentationDelay;

  ///	boolean	If true will cause DASH parser to ignore empty AdaptationSet from manifest. Defaults to false if not provided.
  external bool ignoreEmptyAdaptationSet;

  ///	boolean	If true will cause DASH parser to ignore maxSegmentDuration from manifest. Defaults to false if not provided.
  external bool ignoreMaxSegmentDuration;

  ///	Object.<string, string>	A map of scheme URI to key system name. Defaults to default key systems mapping handled by Shaka.
  external JsObject keySystemsByURI;

  ///	function	Called immediately after the DASH manifest has been parsed into an XMLDocument. Provides a way for applications to perform efficient preprocessing of the manifest.
  external JSFunction manifestPreprocessor;

  ///	boolean	If true, the media segments are appended to the SourceBuffer in "sequence mode" (ignoring their internal timestamps). Defaults to false.
  external bool sequenceMode;
}
