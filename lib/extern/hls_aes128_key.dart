@JS('shaka.extern')
library shaka.extern;

import 'dart:js';
import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.HlsAes128Key
@JS('HlsAes128Key')
class HlsAes128Key {
  ///	The key method defined in the HLS manifest.
  external String method;

  /// webCrypto.CryptoKey | undefined	Web crypto key object of the AES-128 CBC key. If unset, the "fetchKey" property should be provided.
  external dynamic cryptoKey;

  /// shaka.extern.FetchCryptoKeysFunction | undefined	A function that fetches the key. Should be provided if the "cryptoKey" property is unset. Should update this object in-place, to set "cryptoKey".
  external JsFunction fetchKey;

  /// Uint8Array | undefined	The IV in the HLS manifest, if defined. See HLS RFC 8216 Section 5.2 for handling undefined IV.
  external JSUint8Array iv;

  /// number	The starting Media Sequence Number of the playlist, used when IV is undefined.
  external num firstMediaSequenceNumber;
}
