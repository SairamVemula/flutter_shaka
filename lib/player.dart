// ignore_for_file: constant_identifier_names

@JS('shaka')
library shaka;

// ignore: depend_on_referenced_packages
import 'dart:js';

import 'dart:js_interop';
import 'dart:html';

import 'extern/extern.dart' as extern;
import 'net/net.dart';

@JS('Player')
class Player {
  external Player(MediaElement element, [Function dependencyInjector]);
  // ignore: non_constant_identifier_names
  external static num get LoadMode;
  external String get version;
  external static bool isBrowserSupported();
  external extern.SupportType probeSupport(bool promptsOkay);
  external void registerSupportPlugin(String name, JsFunction callback);

  /// JsFunction is shaka.extern.IAdManager.Factory
  external void setAdManagerFactory(
      JsFunction factory); //TODO: implement  shaka.extern.IAdManager.Factory
  @JS('addChaptersTrack')
  external JSPromise _addChaptersTrack(String uri, String language,
      [String? mimeType]);
  Future<extern.Track> addChaptersTrack(String uri, String language,
          [String? mimeType]) =>
      _addChaptersTrack(uri, language, mimeType).toDart as Future<extern.Track>;
  @JS('addTextTrackAsync')
  external JSPromise _addTextTrackAsync(
      String uri, String language, String kind,
      [bool? mimeType, bool? codec, bool? label, bool? forced]);
  Future<extern.Track> addTextTrackAsync(
          String uri, String language, String kind,
          [bool? mimeType, bool? codec, bool? label, bool? forced]) =>
      _addTextTrackAsync(uri, language, kind, mimeType, codec, label, forced)
          .toDart as Future<extern.Track>;
  @JS('addThumbnailsTrack')
  external JSPromise _addThumbnailsTrack(String uri, [String? mimeType]);
  Future<extern.Track> addThumbnailsTrack(String uri, [String? mimeType]) =>
      _addThumbnailsTrack(uri, mimeType).toDart as Future<extern.Track>;
  @JS('attach')
  external JSPromise _attach(MediaElement mediaElementnon,
      [bool? initializeMediaSource]);
  Future<void> attach(MediaElement mediaElementnon,
          [bool? initializeMediaSource]) =>
      _attach(mediaElementnon, initializeMediaSource).toDart;
  external void attachCanvas(CanvasElement canvas);
  external void cancelTrickPlay();
  external bool configure(dynamic config, [dynamic value]);
  @JS('destroy')
  external JSPromise _destroy();
  Future<void> destroy() => _destroy().toDart;
  @JS('detach')
  external JSPromise _detach();
  Future<void> detach() => _detach().toDart;
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
  external JSPromise _getThumbnails(num trackId, num time);
  Future<extern.Thumbnail?> getThumbnails(num trackId, num time) =>
      _getThumbnails(trackId, time).toDart as Future<extern.Thumbnail?>;
  external JsArray<extern.Track> getVariantTracks();
  external void goToLive();
  external bool isAudioOnly();
  external bool isBuffering();
  external bool isInProgress();
  external bool isLive();
  external bool isTextTrackVisible();
  external String keySystem();
  @JS('load')
  external JSPromise _load(String assetUri, [num? startTile, String? mimeType]);
  Future<void> load(String assetUri, [num? startTile, String? mimeType]) =>
      _load(assetUri, startTile, mimeType).toDart;
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
  external JSPromise _unload([bool? initializeMediaSource]);
  Future unload([bool? initializeMediaSource]) =>
      _unload(initializeMediaSource).toDart;

  external void updateStartTime(num startTime);
  external void addEventListener(String event, Function callback);
}

// final sd = promiseToFuture();
// final sds = promiseToFutureAsMap();
