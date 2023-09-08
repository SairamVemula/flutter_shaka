@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.AdvancedAbrConfiguration
@JS('AdvancedAbrConfiguration')
class AdvancedAbrConfiguration {
  ///	number	Minimum number of bytes sampled before we trust the estimate. If we have not sampled much data, our estimate may not be accurate enough to trust.
  external num minTotalBytes;

  ///	number	Minimum number of bytes, under which samples are discarded. Our models do not include latency information, so connection startup time (time to first byte) is considered part of the download time. Because of this, we should ignore very small downloads which would cause our estimate to be too low.
  external num minBytes;

  ///	number	The quantity of prior samples (by weight) used when creating a new estimate, in seconds. Those prior samples make up half of the new estimate.
  external num fastHalfLife;

  ///	number	The quantity of prior samples (by weight) used when creating a new estimate, in seconds. Those prior samples make up half of the new estimate.
  external num slowHalfLife;
}
