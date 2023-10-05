import 'dart:convert';
import 'dart:js';
import 'dart:typed_data';

import 'package:js/js.dart';
import 'package:js/js_util.dart';

// The Dart class must have `@JSExport` on it or one of its instance members.
@JSExport()
class RequestFilterFunctions {
  @JSExport('requestFilter')
  void requestFilter(String type, dynamic request) {
    print('request filter before license check $type $request');
    final NetworkingEngineRequestType =
        context['shaka']['net']['NetworkingEngine']['RequestType'];
    if (type != NetworkingEngineRequestType['LICENSE']) {
      return;
    }

    final originalPayload = Uint8List.fromList(List<int>.from(request['body']));
    final base64Payload = base64Encode(originalPayload);
    request['headers']['Content-Type'] = 'application/json';
    request['body'] = '{"spc": "$base64Payload"}';
    print('request filter after license check');
  }
}

@JS()
@staticInterop
class JSRequestFilterFunctions {
  external void requestFilter();
}

final filters =
    createDartExport<RequestFilterFunctions>(RequestFilterFunctions())
        as JSRequestFilterFunctions;
