@JS('shaka.extern')
library shaka.extern;

import 'package:js/js.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.Restrictions
@JS('Restrictions')
class Restrictions {
  ///	number	The minimum width of a video track, in pixels.
  external num minWidth;

  ///	number	The maximum width of a video track, in pixels.
  external num maxWidth;

  ///	number	The minimum height of a video track, in pixels.
  external num minHeight;

  ///	number	The maximum height of a video track, in pixels.
  external num maxHeight;

  ///	number	The minimum number of total pixels in a video track (i.e. width * height).
  external num minPixels;

  ///	number	The maximum number of total pixels in a video track (i.e. width * height).
  external num maxPixels;

  ///	number	The minimum framerate of a variant track.
  external num minFrameRate;

  ///	number	The maximum framerate of a variant track.
  external num maxFrameRate;

  ///	number	The minimum bandwidth of a variant track, in bit/sec.
  external num minBandwidth;

  ///	number	The maximum bandwidth of a variant track, in bit/sec.
  external num maxBandwidth;
}
