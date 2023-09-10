// ignore_for_file: non_constant_identifier_names

@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';
import 'package:js/js.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.FetchCryptoKeysFunction
@JS('FetchCryptoKeysFunction')
external JSPromise FetchCryptoKeysFunction();
