// ignore_for_file: non_constant_identifier_names

library shaka;

import 'dart:convert';
import 'dart:js';
import 'dart:js_interop';
import 'dart:js_util';

import 'player_js.dart';
import 'dart:html';

import 'extern/extern.dart' as extern;
import 'net/net.dart';

class Player {
  PlayerJS _player;
  Player(MediaElement element, [Function? dependencyInjector])
      : _player = PlayerJS(element, dependencyInjector);
  static num get LoadMode => PlayerJS.LoadMode;
  String get version => _player.version;
  static bool isBrowserSupported() => PlayerJS.isBrowserSupported();
  extern.SupportType probeSupport(bool promptsOkay) =>
      _player.probeSupport(promptsOkay);
  void registerSupportPlugin(String name, JsFunction callback) =>
      _player.registerSupportPlugin(name, callback);

  /// JsFunction is shaka.extern.IAdManager.Factory
  void setAdManagerFactory(JsFunction factory) => _player.setAdManagerFactory(
      factory); //TODO: implement  shaka.extern.IAdManager.Factory
  Future addChaptersTrack(String uri, String language, [String? mimeType]) =>
      _player.addChaptersTrack(uri, language, mimeType).toDart;
  Future addTextTrackAsync(String uri, String language, String kind,
          [bool? mimeType, bool? codec, bool? label, bool? forced]) =>
      _player
          .addTextTrackAsync(
              uri, language, kind, mimeType, codec, label, forced)
          .toDart;
  Future addThumbnailsTrack(String uri, [String? mimeType]) =>
      _player.addThumbnailsTrack(uri, mimeType).toDart;
  Future attach(MediaElement mediaElement, [bool? initializeMediaSource]) =>
      _player.attach(mediaElement, initializeMediaSource).toDart;
  void attachCanvas(CanvasElement canvas) => _player.attachCanvas(canvas);
  void cancelTrickPlay() => _player.cancelTrickPlay();
  bool configure(dynamic config, [dynamic value]) =>
      _player.configure(jsify(config), value);
  Future destroy() => _player.destroy().toDart;
  Future detach() => _player.detach().toDart;
  // extern.DrmInfo drmInfo();
  List<extern.DrmSessionMetadata> getActiveSessionsMetadata() =>
      _player.getActiveSessionsMetadata();
  dynamic getAdManager() =>
      _player.getAdManager(); //TODO: implement shaka.extern.IAdManager
  String getAssetUri() => _player.getAssetUri();
  List<String> getAudioLanguages() => _player.getAudioLanguages();
  List<extern.LanguageRole> getAudioLanguagesAndRoles() =>
      _player.getAudioLanguagesAndRoles();
  extern.BufferedInfo getBufferedInfo() => _player.getBufferedInfo();
  num getBufferFullness() => _player.getBufferFullness();
  List<extern.Chapter> getChapters(String language) =>
      _player.getChapters(language);
  List<extern.Track> getChaptersTracks() => _player.getChaptersTracks();
  extern.PlayerConfiguration getConfiguration() => _player.getConfiguration();
  num getExpiration() => _player.getExpiration();
  List<extern.Track> getImageTracks() => _player.getImageTracks();
  Map<String, String> getKeyStatuses() => _player.getKeyStatuses();
  num getLoadMode() => _player.getLoadMode();
  extern.Manifest getManifest() => _player.getManifest();

  /// JsFunction is shaka.extern.ManifestParser.Factory
  JsFunction getManifestParserFactory() => _player.getManifestParserFactory();
  String getManifestType() => _player.getManifestType();
  MediaElement getMediaElement() => _player.getMediaElement();
  NetworkingEngine getNetworkingEngine() => _player.getNetworkingEngine();
  num getPlaybackRate() => _player.getPlaybackRate();
  DateTime getPlayheadTimeAsDate() => _player.getPlayheadTimeAsDate();
  DateTime getPresentationStartTimeAsDate() =>
      _player.getPresentationStartTimeAsDate();
  extern.Stats getStats() => _player.getStats();
  List<String> getTextLanguages() => _player.getTextLanguages();
  List<extern.LanguageRole> getTextLanguagesAndRoles() =>
      _player.getTextLanguagesAndRoles();
  List<extern.Track> getTextTracks() => _player.getTextTracks();
  Future getThumbnails(num trackId, num time) =>
      _player.getThumbnails(trackId, time).toDart;
  List<extern.Track> getVariantTracks() => _player
      .getVariantTracks()
      .map((e) => extern.Track.fromJson(jsonEncode(dartify(e))))
      .toList();
  void goToLive() => _player.goToLive();
  bool isAudioOnly() => _player.isAudioOnly();
  bool isBuffering() => _player.isBuffering();
  bool isInProgress() => _player.isInProgress();
  bool isLive() => _player.isLive();
  bool isTextTrackVisible() => _player.isTextTrackVisible();
  String keySystem() => _player.keySystem();
  Future load(String assetUri, [num? startTile, String? mimeType]) =>
      _player.load(assetUri, startTile, mimeType).toDart;
  void resetConfiguration() => _player.resetConfiguration();
  bool retryStreaming([num? retryDelaySeconds]) =>
      _player.retryStreaming(retryDelaySeconds);
  Map<String, num> seekRange() => _player.seekRange();
  void selectAudioLanguage(
          String language, String? role, num? channelsCount, num? safeMargin) =>
      _player.selectAudioLanguage(language, role, channelsCount, safeMargin);
  void selectTextLanguage(String language, [String? role, bool? forced]) =>
      _player.selectTextLanguage(language, role, forced);
  void selectTextTrack(extern.Track language) =>
      _player.selectTextTrack(language);
  void selectVariantsByLabel(String label,
          [bool? clearBuffer, num? safeMargin]) =>
      _player.selectVariantsByLabel(label, clearBuffer, safeMargin);
  void selectVariantTrack(extern.Track track,
          [bool? clearBuffer, num? safeMargin]) =>
      _player.selectVariantTrack(track, clearBuffer, safeMargin);
  void setMaxHardwareResolution(num width, num height) =>
      _player.setMaxHardwareResolution(width, height);
  void setTextTrackVisibility(bool isVisible) =>
      _player.setTextTrackVisibility(isVisible);
  void setVideoContainer(Element videoContainer) =>
      _player.setVideoContainer(videoContainer);
  void trickPlay(num rate) => _player.trickPlay(rate);
  Future unload([bool? initializeMediaSource]) =>
      _player.unload(initializeMediaSource).toDart;
  void updateStartTime(num startTime) => _player.updateStartTime(startTime);
  void addEventListener(String event, Function callback) =>
      _player.addEventListener(event, callback);
}

// final sd = promiseToFuture();
// final sds = promiseToFutureAsMap();
