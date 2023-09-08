// ignore_for_file: constant_identifier_names
@JS('shaka.net')
library shaka.net;

// ignore: depend_on_referenced_packages
import 'dart:js_interop';

@JS('NetworkingEngine')
class NetworkingEngine {
  external void defaultRetryParameters();
  external void makeRequest();
  external void registerScheme();
  external void unregisterScheme();
  external void clearAllRequestFilters();
  external void clearAllResponseFilters();
  external void destroy();
  external void registerRequestFilter(filter);
  external void registerResponseFilter(filter);
}

class RequestType {
  static const MANIFEST = 0;
  static const SEGMENT = 1;
  static const LICENSE = 2;
  static const APP = 3;
  static const TIMING = 4;
  static const SERVER_CERTIFICATE = 5;
  static const KEY = 5;
}

class AdvancedRequestType {
  static const INIT_SEGMENT = 0;
  static const MEDIA_SEGMENT = 1;
  static const MEDIA_PLAYLIST = 2;
  static const MASTER_PLAYLIST = 3;
  static const MPD = 4;
  static const MSS = 5;
}

class PluginPriority {
  static const FALLBACK = 1;
  static const PREFERRED = 2;
  static const APPLICATION = 3;
}
/*
extension NetworkingEngineExt on NetworkingEngine {
  void registerRequestFilter(RequestFilter filter) {
    privateRegisterRequestFilter(allowInterop(filter));
  }
}
*/
