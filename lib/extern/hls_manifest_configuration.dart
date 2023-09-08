@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.HlsManifestConfiguration
@JS('HlsManifestConfiguration')
class HlsManifestConfiguration {
  ///	boolean	If true, ignore any errors in a text stream and filter out those streams.
  external bool ignoreTextStreamFailures;

  ///	boolean	If true, ignore any errors in a image stream and filter out those streams.
  external bool ignoreImageStreamFailures;

  ///	string	The default audio codec if it is not specified in the HLS playlist. Defaults to 'mp4a.40.2'.
  external String defaultAudioCodec;

  ///	string	The default video codec if it is not specified in the HLS playlist. Defaults to 'avc1.42E01E'.
  external String defaultVideoCodec;

  ///	boolean	If true, the HLS parser will ignore the EXT-X-PROGRAM-DATE-TIME tags in the manifest and use media sequence numbers instead. Meant for streams where EXT-X-PROGRAM-DATE-TIME is incorrect or malformed. Defaults to false.
  external bool ignoreManifestProgramDateTime;

  ///	string	A string containing a full mime type, including both the basic mime type and also the codecs. Used when the HLS parser parses a media playlist directly, required since all of the mime type and codecs information is contained within the master playlist. You can use the shaka.util.MimeUtils.getFullType() utility to format this value. Defaults to 'video/mp2t; codecs="avc1.42E01E, mp4a.40.2"'.
  external String mediaPlaylistFullMimeType;

  ///	boolean	If this is true, playback will set the availability window to the presentation delay. The player will be able to buffer ahead three segments, but the seek window will be zero-sized, to be consistent with Safari. If this is false, the seek window will be the entire duration. Defaults to true.
  external bool useSafariBehaviorForLive;

  ///	number	The default presentation delay will be calculated as a number of segments. This is the number of segments for this calculation.. Defaults to 3.
  external num liveSegmentsDelay;

  ///	boolean	If true, the media segments are appended to the SourceBuffer in "sequence mode" (ignoring their internal timestamps). Defaults to true except on WebOS 3, Tizen 2, Tizen 3 and PlayStation 4 whose default value is false.
  external bool sequenceMode;

  ///	boolean	If true, don't adjust the timestamp offset to account for manifest segment durations being out of sync with segment durations. In other words, assume that there are no gaps in the segments when appending to the SourceBuffer, even if the manifest and segment times disagree. Only applies when sequenceMode is false. Defaults to false.
  external bool ignoreManifestTimestampsInSegmentsMode;
}
