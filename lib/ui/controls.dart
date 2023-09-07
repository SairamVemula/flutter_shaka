@JS('shaka.ui')
library shaka.ui;

import 'dart:html';

import 'package:flutter_shaka/flutter_shaka.dart' as shaka;
import 'package:js/js.dart';

@JS('Controls')
class Controls {
  external Controls(shaka.Player player, Element videoContainer,
      MediaElement video, shaka.UIConfiguration config);

  external void registerElement(
      String name, factory); // TODO: implemnt shaka.extern.IUISeekBar.Factory;
  external void registerSeekBar(
      factory); // TODO: implemnt shaka.extern.IUISeekBar.Factory;
  external void allowCast(bool allow);
  external bool anySettingsMenusAreOpen();
  external void configure(shaka.UIConfiguration config);
  external Future destroy();
  external void getAd(); //TODO: implement shaka.extern.IAd
  external void
      getCastProxy(); //TODO: implement shaka.cast.CastProxy shaka.extern.IAd
  external Element getClientSideAdContainer();
  external shaka.UIConfiguration getConfig();
  external Element getControlsContainer();
  external double getDisplayTime();
  external void getLocalization(); //TODO: implement shaka.ui.Localization
  external shaka.Player getLocalPlayer();
  external MediaElement getLocalVideo();
  external shaka.Player getPlayer();
  external Element getServerSideAdContainer();
  external MediaElement getVideo();
  external Element getVideoContainer();
  external void hideAdUI();
  external void hideSettingsMenus();
  external bool isCastAllowed();
  external bool isFullScreenEnabled();
  external bool isFullScreenSupported();
  external bool isOpaque();
  external bool isSeeking();
  external void loadComplete();
  external void setEnabledNativeControls(bool enabled);
  external void setEnabledShakaControls(bool enabled);
  external void setLastTouchEventTime(double time);
  external void setSeeking(bool seeking);
  external void showAdUI();
  external void toggleFullScreen();
}
