@JS('shaka.extern')
library shaka.extern;

import 'package:js/js.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.RetryParameters
@JS('RetryParameters')
class RetryParameters {
  ///	number	The maximum number of times the request should be attempted.
  external num maxAttempts;

  ///	number	The delay before the first retry, in milliseconds.
  external num baseDelay;

  ///	number	The multiplier for successive retry delays.
  external num backoffFactor;

  ///	number	The maximum amount of fuzz to apply to each retry delay. For example, 0.5 means "between 50% below and 50% above the retry delay."
  external num fuzzFactor;

  ///	number	The request timeout, in milliseconds. Zero means "unlimited". Defaults to 30000 milliseconds.
  external num timeout;

  ///	number	The request stall timeout, in milliseconds. Zero means "unlimited". Defaults to 5000 milliseconds.
  external num stallTimeout;

  ///	number	The request connection timeout, in milliseconds. Zero means "unlimited". Defaults to 10000 milliseconds.
  external num connectionTimeout;
}
