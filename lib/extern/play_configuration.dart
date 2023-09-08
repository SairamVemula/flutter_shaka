@JS('shaka.extern')
library shaka.extern;

import 'dart:js';
import 'dart:js_interop';

import 'extern.dart';
import '../config/config.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.PlayerConfiguration
@JS('PlayerConfiguration')
class PlayerConfiguration {
  ///	shaka.extern.AdsConfiguration	Ads configuration and settings.
  external AdsConfiguration ads;

  ///	shaka.config.AutoShowText	Controls behavior of auto-showing text tracks on load().
  external AutoShowText autoShowText;

  ///	shaka.extern.DrmConfiguration	DRM configuration and settings.
  external DrmConfiguration drm;

  ///	shaka.extern.ManifestConfiguration	Manifest configuration and settings.
  external ManifestConfiguration manifest;

  ///	shaka.extern.StreamingConfiguration	Streaming configuration and settings.
  external StreamingConfiguration streaming;

  ///	shaka.extern.MediaSourceConfiguration	Media source configuration and settings.
  external MediaSourceConfiguration mediaSource;

  ///	JsFunction is shaka.extern.AbrManager.Factory
  ///A factory to construct an abr manager.
  external JsFunction abrFactory;

  ///	shaka.extern.AbrConfiguration	ABR configuration and settings.
  external AbrConfiguration abr;

  ///	shaka.extern.CmcdConfiguration	CMCD configuration and settings. (Common Media Client Data)
  external CmcdConfiguration cmcd;

  ///	shaka.extern.LcevcConfiguration	MPEG-5 LCEVC configuration and settings. (Low Complexity Enhancement Video Codec)
  external LcevcConfiguration lcevc;

  ///	shaka.extern.OfflineConfiguration	Offline configuration and settings.
  external OfflineConfiguration offline;

  ///	string	The preferred language to use for audio tracks. If not given it will use the 'main' track. Changing this during playback will not affect the current playback.
  external String preferredAudioLanguage;

  ///	string	The preferred label to use for audio tracks
  external String preferredAudioLabel;

  ///	string	The preferred language to use for text tracks. If a matching text track is found, and the selected audio and text tracks have different languages, the text track will be shown. Changing this during playback will not affect the current playback.
  external String preferredTextLanguage;

  ///	string	The preferred role to use for variants.
  external String preferredVariantRole;

  ///	string	The preferred role to use for text tracks.
  external String preferredTextRole;

  ///	Array.<string>	The list of preferred video codecs, in order of highest to lowest priority.
  external JsArray<String> preferredVideoCodecs;

  ///	Array.<string>	The list of preferred audio codecs, in order of highest to lowest priority.
  external JsArray<String> preferredAudioCodecs;

  ///	number	The preferred number of audio channels.
  external num preferredAudioChannelCount;

  ///	string	The preferred HDR level of the video. If possible, this will cause the player to filter to assets that either have that HDR level, or no HDR level at all. Can be 'SDR', 'PQ', 'HLG', 'AUTO' for auto-detect, or '' for no preference. Defaults to 'AUTO'. Note that one some platforms, such as Chrome, attempting to play PQ content may cause problems.
  external String preferredVideoHdrLevel;

  ///	Array.<string>	The list of preferred attributes of decodingInfo, in the order of their priorities.
  external JsArray<String> preferredDecodingAttributes;

  ///	boolean	If true, a forced text track is preferred. Defaults to false. If the content has no forced captions and the value is true, no text track is chosen. Changing this during playback will not affect the current playback.
  external bool preferForcedSubs;

  ///	shaka.extern.Restrictions	The application restrictions to apply to the tracks. These are "hard" restrictions. Any track that fails to meet these restrictions will not appear in the track list. If no tracks meet these restrictions, playback will fail.
  external Restrictions restrictions;

  ///	number	Optional playback and seek start time in seconds. Defaults to 0 if not provided.
  external num? playRangeStart;

  ///	number	Optional playback and seek end time in seconds. Defaults to the end of the presentation if not provided.
  external num? playRangeEnd;

  /// JsFunction is	shaka.extern.TextDisplayer.Factory
  ///A factory to construct a text displayer. Note that, if this is changed during playback, it will cause the text tracks to be reloaded.
  external dynamic textDisplayFactory;
}
