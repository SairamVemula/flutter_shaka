@JS('shaka.extern')
library shaka.extern;

import 'package:js/js.dart';

import 'extern.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.ManifestConfiguration
@JS('ManifestConfiguration')
class ManifestConfiguration {
  ///	shaka.extern.RetryParameters	Retry parameters for manifest requests.
  external RetryParameters retryParameters;

  ///	number	A number, in seconds, that overrides the availability window in the manifest, or NaN if the default value should be used. This is enforced by the manifest parser, so custom manifest parsers should take care to honor this parameter.
  external num availabilityWindowOverride;

  ///	boolean	If true, the audio tracks are ignored. Defaults to false.
  external bool disableAudio;

  ///	boolean	If true, the video tracks are ignored. Defaults to false.
  external bool disableVideo;

  ///	boolean	If true, the text tracks are ignored. Defaults to false.
  external bool disableText;

  ///	boolean	If true, the image tracks are ignored. Defaults to false.
  external bool disableThumbnails;

  ///	number	A default presentationDelay value. For DASH, it's a default presentationDelay value if suggestedPresentationDelay is missing in the MPEG DASH manifest. The default value is 1.5 * minBufferTime if not configured or set as 0. For HLS, the default value is 3 segments duration if not configured or set as 0.
  external num defaultPresentationDelay;

  ///	boolean	Option to calculate VTT text timings relative to the segment start instead of relative to the period start (which is the default). Defaults to false.
  external bool segmentRelativeVttTiming;

  ///	shaka.extern.DashManifestConfiguration	Advanced parameters used by the DASH manifest parser.
  external DashManifestConfiguration dash;

  ///	shaka.extern.HlsManifestConfiguration	Advanced parameters used by the HLS manifest parser.
  external HlsManifestConfiguration hls;

  ///	shaka.extern.MssManifestConfiguration	Advanced parameters used by the MSS manifest parser.
  external MssManifestConfiguration mss;

  ///	boolean	If true, manifest update request failures will cause a fatal errror. Defaults to false if not provided.
  external bool raiseFatalErrorOnManifestUpdateRequestFailure;
}
