@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';

import 'extern.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.AbrConfiguration
@JS('AbrConfiguration')
class AbrConfiguration {
  ///	boolean	If true, enable adaptation by the current AbrManager. Defaults to true.
  external bool enabled;

  ///	boolean	If true, use Network Information API in the current AbrManager. Defaults to true.
  external bool useNetworkInformation;

  ///	number	The default bandwidth estimate to use if there is not enough data, in bit/sec.
  external num defaultBandwidthEstimate;

  ///	shaka.extern.Restrictions	The restrictions to apply to ABR decisions. These are "soft" restrictions. Any track that fails to meet these restrictions will not be selected automatically, but will still appear in the track list and can still be selected via selectVariantTrack(). If no tracks meet these restrictions, AbrManager should not fail, but choose a low-res or low-bandwidth variant instead. It is the responsibility of AbrManager implementations to follow these rules and implement this behavior.
  external Restrictions restrictions;

  ///	number	The minimum amount of time that must pass between switches, in seconds. This keeps us from changing too often and annoying the user.
  external num switchInterval;

  ///	number	The fraction of the estimated bandwidth which we should try to use when upgrading.
  external num bandwidthUpgradeTarget;

  ///	number	The largest fraction of the estimated bandwidth we should use. We should downgrade to avoid this.
  external num bandwidthDowngradeTarget;

  ///	shaka.extern.AdvancedAbrConfiguration	Advanced ABR configuration
  external AdvancedAbrConfiguration advanced;

  ///	boolean	If true, restrict the quality to media element size. Note: The use of ResizeObserver is required for it to work properly. If true without ResizeObserver, it behaves as false. Defaults false.
  external bool restrictToElementSize;

  ///	boolean	If true, restrict the quality to screen size. Defaults false.
  external bool restrictToScreenSize;

  ///	boolean	If true,device pixel ratio is ignored when restricting the quality to media element size or screen size. Defaults false.
  external bool ignoreDevicePixelRatio;

  ///	boolean	If true, the buffer will be cleared during the switch. The default automatic behavior is false to have a smoother transition. On some device it's better to clear buffer. Defaults false.
  external bool clearBufferSwitch;

  ///	number	Optional amount of buffer (in seconds) to retain when clearing the buffer during the automatic switch. Useful for switching variant quickly without causing a buffering event. Defaults to 0 if not provided. Ignored if clearBuffer is false. Can cause hiccups on some browsers if chosen too small, e.g. The amount of two segments is a fair minimum to consider as safeMargin value.
  external num? safeMarginSwitch;
}
