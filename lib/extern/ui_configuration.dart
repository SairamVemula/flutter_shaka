@JS('shaka.extern')
library shaka.extern;

// ignore: depend_on_referenced_packages
import 'package:js/js.dart';
import 'dart:js';
import 'dart:html';

@JS('UIConfiguration')
class UIConfiguration {
  external List<String> controlPanelElements;
  external List<String> overflowMenuButtons;
  external List<String> contextMenuElements;
  external List<String> statisticsList;
  external List<num> playbackRates;
  external List<num> fastForwardRates;
  external List<num> rewindRates;
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
