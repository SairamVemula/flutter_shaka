@JS('shaka.extern')
library shaka.extern;

// ignore: depend_on_referenced_packages
import 'dart:js_interop';
import 'dart:js';
import 'dart:html';

@JS('UIConfiguration')
class UIConfiguration {
  external JsArray<String> controlPanelElements;
  external JsArray<String> overflowMenuButtons;
  external JsArray<String> contextMenuElements;
  external JsArray<String> statisticsList;
  external JsArray<num> playbackRates;
  external JsArray<num> fastForwardRates;
  external JsArray<num> rewindRates;
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
  external num fadeDelay;
  external bool numClickForFullscreen;
  external bool singleClickForPlayAndPause;
  external bool enableKeyboardPlaybackControls;
  external bool enableFullscreenOnRotation;
  external bool forceLandscapeOnFullscreen;
  external bool enableTooltips;
  external num keyboardSeekDistance;
  external num keyboardLargeSeekDistance;
  external Element fullScreenElement;
}
