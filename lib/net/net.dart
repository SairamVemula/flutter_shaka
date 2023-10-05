library shaka.net;

import 'net_js.dart';

class NetworkingEngine {
  final NetworkingEngineJS _networkEngine;
  NetworkingEngine(networkEngine) : _networkEngine = networkEngine;
  void defaultRetryParameters() {
    return _networkEngine.defaultRetryParameters();
  }

  void makeRequest() {
    return _networkEngine.makeRequest();
  }

  void registerScheme() {
    return _networkEngine.registerScheme();
  }

  void unregisterScheme() {
    return _networkEngine.unregisterScheme();
  }

  void clearAllRequestFilters() {
    return _networkEngine.clearAllRequestFilters();
  }

  void clearAllResponseFilters() {
    return _networkEngine.clearAllResponseFilters();
  }

  void destroy() {
    return _networkEngine.destroy();
  }

  void registerRequestFilter(Function func) {
    _networkEngine.registerRequestFilter(func);
  }

  void registerResponseFilter(Function func) {
    _networkEngine.registerResponseFilter(func);
  }
}
