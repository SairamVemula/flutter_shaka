// ignore_for_file: constant_identifier_names

@JS('shaka')
library shaka;

import 'dart:html';

// ignore: depend_on_referenced_packages
import 'package:js/js.dart';
import 'net/net.dart';

@JS('Player')
class Player {
  external Player(MediaElement element, [Function dependencyInjector]);
  // ignore: non_constant_identifier_names
  external static int get LoadMode;
  external String get version;
  external static bool isBrowserSupported();
  external dynamic probeSupport(
      bool promptsOkay); //TODO: implement shaka.extern.SupportType
  external void registerSupportPlugin(String name, Function callback);
  external void setAdManagerFactory(
      dynamic factory); //TODO: implement  shaka.extern.IAdManager.Factory
  external Future<dynamic> addChaptersTrack(String uri, String language,
      [String mimeType]); //TODO: implement shaka.extern.Track
  external Future<dynamic> addTextTrackAsync(
      String uri, String language, String kind,
      [bool mimeType,
      bool codec,
      bool label,
      bool forced]); //TODO: implement shaka.extern.Track
  external Future<dynamic> addThumbnailsTrack(String uri,
      [String mimeType]); //TODO: implement shaka.extern.Track
  external Future<void> attach(MediaElement mediaElementnon,
      [bool initializeMediaSource]);
  external void attachCanvas(CanvasElement canvas);
  external void cancelTrickPlay();
  external bool configure(dynamic config, [dynamic value]);
  external Future<void> destroy();
  external Future<void> detach();
  external dynamic drmInfo(); //TODO: implement shaka.extern.DrmInfo
  external List<dynamic>
      getActiveSessionsMetadata(); //TODO: implement shaka.extern.DrmSessionMetadata
  external dynamic getAdManager(); //TODO: implement shaka.extern.IAdManager
  external String getAssetUri();
  external List<String> getAudioLanguages();
  external List<dynamic>
      getAudioLanguagesAndRoles(); //TODO: implement shaka.extern.LanguageRole
  external dynamic
      getBufferedInfo(); //TODO: implement shaka.extern.BufferedInfo
  external double getBufferFullness();
  external List<dynamic> getChapters(
      String language); //TODO: implement shaka.extern.Chapter
  external List<dynamic>
      getChaptersTracks(); //TODO: implement shaka.extern.Track
  external dynamic
      getConfiguration(); //TODO: implement shaka.extern.PlayerConfiguration
  external double getExpiration();
  external List<dynamic> getImageTracks(); //TODO: implement shaka.extern.Track
  external Map<String, String> getKeyStatuses();
  external int getLoadMode();
  external dynamic getManifest(); //TODO: implement shaka.extern.Manifest
  external dynamic
      getManifestParserFactory(); //TODO: implement shaka.extern.ManifestParser.Factory
  external String getManifestType();
  external MediaElement getMediaElement();
  external NetworkingEngine getNetworkingEngine();
  external double getPlaybackRate();
  external DateTime getPlayheadTimeAsDate();
  external DateTime getPresentationStartTimeAsDate();
  external dynamic getStats(); //TODO: implement shaka.extern.Stats
  external List<String> getTextLanguages();
  external List<dynamic>
      getTextLanguagesAndRoles(); //TODO: implement shaka.extern.LanguageRole
  external List<dynamic> getTextTracks(); //TODO: implement shaka.extern.Track
  external Future<dynamic?> getThumbnails(
      double trackId, double time); //TODO: implement shaka.extern.Thumbnail
  external List<dynamic>
      getVariantTracks(); //TODO: implement shaka.extern.Track
  external void goToLive();
  external bool isAudioOnly();
  external bool isBuffering();
  external bool isInProgress();
  external bool isLive();
  external bool isTextTrackVisible();
  external String keySystem();
  external Future<void> load(String assetUri,
      [double startTile, String mimeType]);
  external void resetConfiguration();
  external bool retryStreaming([int retryDelaySeconds]);
  external Map<String, int> seekRange();
  external void selectAudioLanguage(String language,
      [String role, int channelsCount, int safeMargin]);
  external void selectTextLanguage(String language, [String role, bool forced]);
  external void selectTextTrack(
      dynamic language); //TODO: implement shaka.extern.Track
  external void selectVariantsByLabel(String label,
      [bool clearBuffer, int safeMargin]);
  external void selectVariantTrack(dynamic track,
      [bool clearBuffer, int safeMargin]); //TODO: implement shaka.extern.Track
  external void setMaxHardwareResolution(int width, int height);
  external void setTextTrackVisibility(bool isVisible);
  external void setVideoContainer(Element videoContainer);
  external void trickPlay(double rate);
  external Future unload([bool initializeMediaSource]);
  external void updateStartTime(double startTime);
  external void addEventListener(String event, Function callback);
}
