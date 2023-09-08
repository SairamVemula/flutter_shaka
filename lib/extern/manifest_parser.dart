// ignore_for_file: non_constant_identifier_names

@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.ManifestParser
@JS('ManifestParser')
class ManifestParser {
  external void configure(config);
  external void onExpirationUpdated(sessionId, expiration);

  ///{Promise.<shaka.extern.Manifest>}
  /// Initialize and start the parser. When |start| resolves, it should return the initial version of the manifest. |start| will only be called once. If |stop| is called while |start| is pending, |start| should reject.
  external JSPromise start(uri, playerInterface);

  /// Tell the parser that it must stop and free all internal resources as soon as possible. Only once all internal resources are stopped and freed will the promise resolve. Once stopped a parser will not be started again. The parser should support having |stop| called multiple times and the promise should always resolve.
  external JSPromise stop();

  /// Tells the parser to do a manual manifest update. Implementing this is optional. This is only called when 'emsg' boxes are present.
  external void update();

  external static ManifestParser Factory();
}
