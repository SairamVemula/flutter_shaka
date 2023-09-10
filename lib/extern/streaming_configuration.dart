@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';

import 'package:js/js.dart';

import 'extern.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.StreamingConfiguration
@JS('StreamingConfiguration')
class StreamingConfiguration {
  ///	shaka.extern.RetryParameters	Retry parameters for segment requests.
  external RetryParameters retryParameters;

  ///	function	A callback to decide what to do on a streaming failure. Default behavior is to retry on live streams and not on VOD.
  external JSFunction failureCallback;

  ///	number	The minimum number of seconds of content that the StreamingEngine must buffer before it can begin playback or can continue playback after it has entered into a buffering state (i.e., after it has depleted one more more of its buffers).
  external num rebufferingGoal;

  ///	number	The number of seconds of content that the StreamingEngine will attempt to buffer ahead of the playhead. This value must be greater than or equal to the rebuffering goal.
  external num bufferingGoal;

  ///	number	The maximum number of seconds of content that the StreamingEngine will keep in buffer behind the playhead when it appends a new media segment. The StreamingEngine will evict content to meet this limit.
  external num bufferBehind;

  ///	boolean	If true, the player will ignore text stream failures and continue playing other streams.
  external bool ignoreTextStreamFailures;

  ///	boolean	If true, always stream text tracks, regardless of whether or not they are shown. This is necessary when using the browser's built-in controls, which are not capable of signaling display state changes back to Shaka Player. Defaults to false.
  external bool alwaysStreamText;

  ///	boolean	If true, adjust the start time backwards so it is at the start of a segment. This affects both explicit start times and calculated start time for live streams. This can put us further from the live edge. Defaults to false.
  external bool startAtSegmentBoundary;

  ///	number	The maximum distance (in seconds) before a gap when we'll automatically jump. This value defaults to 0.5.
  external num gapDetectionThreshold;

  ///	number	The polling time in seconds to check for gaps in the media. This value defaults to 0.25.
  external num gapJumpTimerTime;

  ///	number	By default, we will not allow seeking to exactly the duration of a presentation. This field is the number of seconds before duration we will seek to when the user tries to seek to or start playback at the duration. To disable this behavior, the config can be set to 0. We recommend using the default value unless you have a good reason not to.
  external num durationBackoff;

  ///	number	The amount of seconds that should be added when repositioning the playhead after falling out of the availability window or seek. This gives the player more time to buffer before falling outside again, but increases the forward jump in the stream skipping more content. This is helpful for lower bandwidth scenarios. Defaults to 5 if not provided.
  external num safeSeekOffset;

  ///	boolean	When set to true, the stall detector logic will run. If the playhead stops moving for stallThreshold seconds, the player will either seek or pause/play to resolve the stall, depending on the value of stallSkip.
  external bool stallEnabled;

  ///	number	The maximum number of seconds that may elapse without the playhead moving (when playback is expected) before it will be labeled as a stall.
  external num stallThreshold;

  ///	number	The number of seconds that the player will skip forward when a stall has been detected. If 0, the player will pause and immediately play instead of seeking. A value of 0 is recommended and provided as default on TV platforms (WebOS, Tizen, Chromecast, etc).
  external num stallSkip;

  ///	boolean	Desktop Safari has both MediaSource and their native HLS implementation. Depending on the application's needs, it may prefer one over the other. Warning when disabled: Where single-key DRM streams work fine, multi-keys streams is showing unexpected behaviours (stall, audio playing with video freezes, ...). Use with care.
  external num useNativeHlsOnSafari;

  ///	number	The maximum difference, in seconds, between the times in the manifest and the times in the segments. Larger values allow us to compensate for more drift (up to one segment duration). Smaller values reduce the incidence of extra segment requests necessary to compensate for drift.
  external num inaccurateManifestTolerance;

  ///	boolean	If true, low latency streaming mode is enabled. If lowLatencyMode is set to true, inaccurateManifestTolerance is set to 0 unless specified, and rebufferingGoal to 0.01 unless specified at the same time.
  external bool lowLatencyMode;

  ///	boolean	If the stream is low latency and the user has not configured the lowLatencyMode, but if it has been configured to activate the lowLatencyMode if a stream of this type is detected, we automatically activate the lowLatencyMode. Defaults to false.
  external bool autoLowLatencyMode;

  ///	boolean	If true, if the protocol is HTTP change it to HTTPs.
  external bool forceHTTPS;

  ///	boolean	If true, prefer native HLS playback when possible, regardless of platform.
  external bool preferNativeHls;

  ///	number	The minimum number of seconds to see if the manifest has changes.
  external num updateIntervalSeconds;

  ///	boolean	If true, all emsg boxes are parsed and dispatched.
  external bool dispatchAllEmsgBoxes;

  ///	boolean	If true, monitor media quality changes and emit .
  external bool observeQualityChanges;

  ///	number	The maximum time a variant can be disabled when NETWORK HTTP_ERROR is reached, in seconds. If all variants are disabled this way, NETWORK HTTP_ERROR will be thrown.
  external num maxDisabledTime;

  ///	boolean	If true, will raise a shaka.extern.ProducerReferenceTime player event (event name 'prft'). The event will be raised only once per playback session as program start date will not change, and would save parsing the segment multiple times needlessly. Defaults to false.
  external bool parsePrftBox;

  ///	boolean	The maximum number of segments for each active stream to be prefetched ahead of playhead in parallel. If 0, the segments will be fetched sequentially. Defaults to 0.
  external bool segmentPrefetchLimit;

  ///	boolean	Enable the live stream sync against the live edge by changing the playback rate. Defaults to false. Note: on some SmartTVs, if this is activated, it may not work or the sound may be lost when activated.
  external bool liveSync;

  ///	number	Maximum acceptable latency, in seconds. Effective only if liveSync is true. Defaults to 1.
  external num liveSyncMaxLatency;

  ///	number	Playback rate used for latency chasing. It is recommended to use a value between 1 and 2. Effective only if liveSync is true. Defaults to 1.1.
  external num liveSyncPlaybackRate;
}
