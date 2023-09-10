@JS('shaka.extern')
library shaka.extern;

import 'package:js/js.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.LcevcConfiguration
@JS('LcevcConfiguration')
class LcevcConfiguration {
  ///	boolean	If true, enable LCEVC. Defaults to false.
  external bool enabled;

  ///	boolean	If true, LCEVC Dynamic Performance Scaling or dps is enabled to be triggered, when the system is not able to decode frames within a specific tolerance of the fps of the video and disables LCEVC decoding for some time. The base video will be shown upscaled to target resolution. If it is triggered again within a short period of time, the disabled time will be higher and if it is triggered three times in a row the LCEVC decoding will be disabled for that playback session. If dynamicPerformanceScaling is false, LCEVC decode will be forced and will drop frames appropriately if performance is sub optimal. Defaults to true.
  external bool dynamicPerformanceScaling;

  ///	number	Loglevel 0-5 for logging. NONE = 0 ERROR = 1 WARNING = 2 INFO = 3 DEBUG = 4 VERBOSE = 5 Defaults to 0.
  external num logLevel;

  ///	boolean	If true, LCEVC Logo is placed on the top left hand corner which only appears when the LCEVC enhanced frames are being rendered. Defaults to true for the lib but is forced to false in this integration unless explicitly set to true through config. Defaults to false.
  external bool drawLogo;
}
