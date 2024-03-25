@JS('shaka.extern')
library shaka.extern;

import 'dart:js';
import 'package:js/js.dart';

import 'variant.dart';
import 'stream.dart';
import 'service_description.dart';
import '../media/media.dart' as media;

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.Manifest
///
/// A Manifest object describes a collection of streams (segmented audio, video, or text data) that share a common timeline. We call the collection of streams "the presentation" and their timeline "the presentation timeline". A Manifest describes one of two types of presentations: live and video-on-demand.
///
/// A live presentation begins at some point in time and either continues indefinitely or ends when the presentation stops broadcasting. For a live presentation, wall-clock time maps onto the presentation timeline, and the current wall-clock time maps to the live-edge (AKA "the current presentation time"). In contrast, a video-on-demand presentation exists entirely independent of wall-clock time.
///
/// A variant is a combination of an audio and a video streams that can be played together.
///
/// A stream has the same logical content as another stream if the only difference between the two is their quality. For example, an SD video stream and an HD video stream that depict the same scene have the same logical content; whereas an English audio stream and a French audio stream have different logical contents. The player can automatically switch between streams which have the same logical content to adapt to network conditions.
@JS('Manifest')
class Manifest {
  ///	shaka.media.PresentationTimeline		Required.
  /// The presentation timeline.
  external media.PresentationTimeline presentationTimeline;

  ///	Array.<shaka.extern.Variant>		Required.
  /// The presentation's Variants. There must be at least one Variant.
  external List<Variant> variants;

  ///	Array.<shaka.extern.Stream>		Required.
  /// The presentation's text streams.
  external List<Stream> textStreams;

  ///	Array.<shaka.extern.Stream>		Required.
// The presentation's image streams
  external List<Stream> imageStreams;

  ///	Array.<string>		Defaults to [].
  /// An array of EME sessions to load for offline playback.
  external List<String> offlineSessionIds;

  ///	number		Defaults to 0.
  /// The minimum number of seconds of content that must be buffered before playback can begin. Can be overridden by a higher value from the Player configuration.
  external num minBufferTime;

  ///	boolean		If true, we will append the media segments using sequence mode; that is to say, ignoring any timestamps inside the media files.
  external bool sequenceMode;

  ///	boolean		If true, don't adjust the timestamp offset to account for manifest segment durations being out of sync with segment durations. In other words, assume that there are no gaps in the segments when appending to the SourceBuffer, even if the manifest and segment times disagree. Only applies when sequenceMode is false, and only for HLS streams. Defaults to false.
  external bool ignoreManifestTimestampsInSegmentsMode;

  ///	string		Indicates the type of the manifest. It can be 'HLS' or 'DASH'.
  external String type;

  ///	shaka.extern.ServiceDescription	<nullable>
  /// The service description for the manifest. Used to adapt playbackRate to decrease latency.
  external ServiceDescription? serviceDescription;
}
