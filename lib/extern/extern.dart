@JS('shaka.extern')
library shaka.extern;

// ignore: depend_on_referenced_packages
import 'package:js/js.dart';
import 'dart:js';
import 'dart:typed_data';
import 'dart:html' as html;

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.Request
@JS('Request')
class Request {
  external List<String> uris;
  external String method;
  external Uint8List body;
  external JsObject headers;
  external bool allowCrossSiteCredentials;
  external String? licenseRequestType;
  external String? sessionId;
  external String? initDataType;
  external Uint8List initData;
}

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.Response
@JS('Response')
class Response {
  external String uri;
  external String originalUri;
  external Uint8List data;
  external JsObject headers;
  external bool status;
  external int? timeMs;
  external bool? fromCache;
}

@JS('UIConfiguration')
class UIConfiguration {
  external List<String> controlPanelElements;
  external List<String> overflowMenuButtons;
  external List<String> contextMenuElements;
  external List<String> statisticsList;
  external List<double> playbackRates;
  external List<double> fastForwardRates;
  external List<double> rewindRates;
  external bool addSeekBar;
  external bool addBigPlayButton;
  external bool customContextMenu;
  external String castReceiverAppId;
  external bool castAndroidReceiverCompatible;
  external bool clearBufferOnQualityChange;
  external bool showUnbufferedStart;
  external dynamic
      seekBarColors; //TODO: implement this shaka.extern.UISeekBarColors
  external dynamic
      volumeBarColors; //TODO: implement this shaka.extern.UIVolumeBarColors
  external dynamic
      trackLabelFormat; //TODO: implement this shaka.ui.Overlay.TrackLabelFormat
  external double fadeDelay;
  external bool doubleClickForFullscreen;
  external bool singleClickForPlayAndPause;
  external bool enableKeyboardPlaybackControls;
  external bool enableFullscreenOnRotation;
  external bool forceLandscapeOnFullscreen;
  external bool enableTooltips;
  external double keyboardSeekDistance;
  external double keyboardLargeSeekDistance;
  external html.Element fullScreenElement;
}

typedef RequestFilter = void Function(int requestType, Request request);
