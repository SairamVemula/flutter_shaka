// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS('shaka')
library shaka;

import 'dart:js';
import 'dart:js_interop';

import 'package:js/js.dart';
import 'dart:html';

import 'extern/extern.dart' as extern;
import 'net/net.dart';

@JS('Player')
class PlayerJS {
  external PlayerJS(MediaElement element, [Function? dependencyInjector]);
  external static num get LoadMode;
  external String get version;
  external static bool isBrowserSupported();
  external extern.SupportType probeSupport(bool promptsOkay);
  external void registerSupportPlugin(String name, JsFunction callback);

  /// JsFunction is shaka.extern.IAdManager.Factory
  external void setAdManagerFactory(
      JsFunction factory); //TODO: implement  shaka.extern.IAdManager.Factory
  @JS('addChaptersTrack')
  external JSPromise addChaptersTrack(String uri, String language,
      [String? mimeType]);
  @JS('addTextTrackAsync')
  external JSPromise addTextTrackAsync(String uri, String language, String kind,
      [bool? mimeType, bool? codec, bool? label, bool? forced]);
  @JS('addThumbnailsTrack')
  external JSPromise addThumbnailsTrack(String uri, [String? mimeType]);
  @JS('attach')
  external JSPromise attach(MediaElement mediaElement,
      [bool? initializeMediaSource]);
  external void attachCanvas(CanvasElement canvas);
  external void cancelTrickPlay();
  external bool configure(dynamic config, [dynamic value]);
  @JS('destroy')
  external JSPromise destroy();
  @JS('detach')
  external JSPromise detach();
  external extern.DrmInfo drmInfo();
  external JsArray<extern.DrmSessionMetadata> getActiveSessionsMetadata();
  external dynamic getAdManager(); //TODO: implement shaka.extern.IAdManager
  external String getAssetUri();
  external JsArray<String> getAudioLanguages();
  external JsArray<extern.LanguageRole> getAudioLanguagesAndRoles();
  external extern.BufferedInfo getBufferedInfo();
  external num getBufferFullness();
  external JsArray<extern.Chapter> getChapters(String language);
  external JsArray<extern.Track> getChaptersTracks();
  external extern.PlayerConfiguration getConfiguration();
  external num getExpiration();
  external JsArray<extern.Track> getImageTracks();
  external Map<String, String> getKeyStatuses();
  external num getLoadMode();
  external extern.Manifest getManifest();

  /// JsFunction is shaka.extern.ManifestParser.Factory
  external JsFunction getManifestParserFactory();
  external String getManifestType();
  external MediaElement getMediaElement();
  external NetworkingEngine getNetworkingEngine();
  external num getPlaybackRate();
  external DateTime getPlayheadTimeAsDate();
  external DateTime getPresentationStartTimeAsDate();
  external extern.Stats getStats();
  external JsArray<String> getTextLanguages();
  external JsArray<extern.LanguageRole> getTextLanguagesAndRoles();
  external JsArray<extern.Track> getTextTracks();
  @JS('getThumbnails')
  external JSPromise getThumbnails(num trackId, num time);
  external JsArray<JsObject> getVariantTracks();
  external void goToLive();
  external bool isAudioOnly();
  external bool isBuffering();
  external bool isInProgress();
  external bool isLive();
  external bool isTextTrackVisible();
  external String keySystem();
  @JS('load')
  external JSPromise load(String assetUri, [num? startTile, String? mimeType]);
  external void resetConfiguration();
  external bool retryStreaming([num? retryDelaySeconds]);
  external Map<String, num> seekRange();
  external void selectAudioLanguage(String language,
      [String? role, num? channelsCount, num? safeMargin]);
  external void selectTextLanguage(String language,
      [String? role, bool? forced]);
  external void selectTextTrack(extern.Track language);
  external void selectVariantsByLabel(String label,
      [bool? clearBuffer, num? safeMargin]);
  external void selectVariantTrack(extern.Track track,
      [bool? clearBuffer, num? safeMargin]);
  external void setMaxHardwareResolution(num width, num height);
  external void setTextTrackVisibility(bool isVisible);
  external void setVideoContainer(Element videoContainer);
  external void trickPlay(num rate);

  @JS('unload')
  external JSPromise unload([bool? initializeMediaSource]);

  external void updateStartTime(num startTime);
  external void addEventListener(String event, Function callback);
}
