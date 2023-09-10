@JS('shaka.extern')
library shaka.extern;

import 'package:js/js.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.CmcdConfiguration
@JS('CmcdConfiguration')
class CmcdConfiguration {
  ///	boolean	If true, enable CMCD data to be sent with media requests. Defaults to false.
  external bool enabled;

  ///	boolean	If true, send CMCD data using the header transmission mode instead of query args. Defaults to false.
  external bool useHeaders;

  ///	string	A GUID identifying the current playback session. A playback session typically ties together segments belonging to a single media asset. Maximum length is 64 characters. It is RECOMMENDED to conform to the UUID specification. By default the sessionId is automatically generated on each load() call.
  external String sessionId;

  ///	string	A unique string identifying the current content. Maximum length is 64 characters. This value is consistent across multiple different sessions and devices and is defined and updated at the discretion of the service provider.
  external String contentId;
}
