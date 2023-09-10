@JS('shaka.extern')
library shaka.extern;

// ignore: depend_on_referenced_packages
import 'dart:js';

import 'dart:js_interop';
import 'package:js/js.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.Track
@JS('Track')
class Track {
  /// The unique ID of the track.
  external num id;

  /// If true, this is the track being streamed (another track may be visible/audible in the buffer).
  external bool active;

  /// The type of track, either 'variant' or 'text' or 'image'.
  external String type;

  /// The bandwidth required to play the track, in bits/sec.
  external num bandwidth;

  /// The language of the track, or 'und' if not given. This value is normalized as follows - language part is always lowercase and translated to ISO-639-1 when possible, locale part is always uppercase, i.e. 'en-US'.
  external String language;

  /// The track label, which is unique text that should describe the track.
  external String? label;

  ///  nullable (only for text tracks) The kind of text track, either 'caption' or 'subtitle'.
  external String? kind;

  /// The video width provided in the manifest, if present.
  external num? width;

  /// number	<nullable>
  /// The video height provided in the manifest, if present.
  external num? height;

  /// The video framerate provided in the manifest, if present.
  external String frameRate;

  /// The video pixel aspect ratio provided in the manifest, if present.
  external String? pixelAspectRatio;

  /// The video HDR provided in the manifest, if present.
  external String? hdr;

  /// The MIME type of the content provided in the manifest.
  external String? mimeType;

  ///The audio MIME type of the content provided in the manifest.
  external String? audioMimeType;

  ///The video MIME type of the content provided in the manifest.
  external String? videoMimeType;

  ///The audio/video codecs string provided in the manifest, if present.
  external String? codecs;

  ///The audio codecs string provided in the manifest, if present.
  external String? audioCodec;

  /// The video codecs string provided in the manifest, if present.
  external String? videoCodec;

  /// True indicates that this in the primary language for the content. This flag is based on signals from the manifest. This can be a useful hint about which language should be the default, and indicates which track Shaka will use when the user's language preference cannot be satisfied.
  external bool primary;

  /// roles	Array.<string>		The roles of the track, e.g. 'main', 'caption', or 'commentary'.
  external JsArray<String> roles;

  /// Array.<string>		The roles of the audio in the track, e.g. 'main' or 'commentary'. Will be null for text tracks or variant tracks without audio.
  external JsArray<String> audioRoles;

  /// The DASH accessibility descriptor, if one was provided for this track. For text tracks, this describes the text; otherwise, this is for the audio.
  external dynamic
      accessibilityPurpose; // TODO: shaka.media.ManifestParser.AccessibilityPurpose	<nullable>

  /// indicates that this in the forced text language for the content. This flag is based on signals from the manifest.
  external bool forced;

  /// nullable (only for variant tracks) The video stream id.
  external num? videoId;

  /// <nullable> (only for variant tracks) The audio stream id.
  external num? audioId;

  /// <nullable> The count of the audio track channels.
  external num? channelsCount;

  /// <nullable> Specifies the maximum sampling rate of the content.
  external num? audioSamplingRate;

  /// The value is a grid-item-dimension consisting of two positive decimal integers in the format: column-x-row ('4x3'). It describes the arrangement of Images in a Grid. The minimum valid LAYOUT is '1x1'.
  external String? tilesLayout;

  /// True indicates that the content has spatial audio. This flag is based on signals from the manifest.
  external bool spatialAudio;

  /// nullable (only for variant tracks) The audio stream's bandwidth if known.
  external num? audioBandwidth;

  /// nullable(only for variant tracks) The video stream's bandwidth if known.
  external num? videoBandwidth;

  /// nullable (variant tracks only) The original ID of the video part of the track, if any, as it appeared in the original manifest.
  external String? originalVideoId;

  /// nullable (variant tracks only) The original ID of the audio part of the track, if any, as it appeared in the original manifest.
  external String? originalAudioId;

  /// nullable (text tracks only) The original ID of the text track, if any, as it appeared in the original manifest.
  external String? originalTextId;

  /// nullable (image tracks only) The original ID of the image track, if any, as it appeared in the original manifest.
  external String? originalImageId;

  /// nullable The original language of the track, if any, as it appeared in the original manifest. This is the exact value provided in the manifest; for normalized value use language property.
  external String? originalLanguage;
}
