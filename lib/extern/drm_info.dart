@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';
import 'package:js/js.dart';

import 'init_data_override.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.DrmInfo
@JS('DrmInfo')
class DrmInfo {
  /// The key system, e.g., "com.widevine.alpha".
  external String keySystem;

  /// Filled in by DRM config if missing.
  ///The license server URI.
  external String licenseServerUri;

  /// Defaults to false. Can be filled in by advanced DRM config.
  /// True if the application requires the key system to support distinctive identifiers.
  external bool distinctiveIdentifierRequired;

  ///	Defaults to false. Can be filled in by advanced DRM config.
  /// True if the application requires the key system to support persistent state, e.g., for persistent license storage.
  external bool persistentStateRequired;

  ///  Defaults to 'temporary' if Shaka wasn't initiated for storage. Can be filled in by advanced DRM config sessionType parameter.
  external String sessionType;

  /// Defaults to '', e.g., no specific robustness required. Can be filled in by advanced DRM config.
  /// A key-system-specific string that specifies a required security level.
  external String audioRobustness;

  /// Defaults to '', e.g., no specific robustness required. Can be filled in by advanced DRM config.
  /// A key-system-specific string that specifies a required security level.
  external String videoRobustness;

  /// Uint8Array	Defaults to null, e.g., certificate will be requested from the license server if required. Can be filled in by advanced DRM config.
  /// A key-system-specific server certificate used to encrypt license requests. Its use is optional and is meant as an optimization to avoid a round-trip to request a certificate.
  external JSUint8Array serverCertificate;

  /// Defaults to '', e.g., server certificate will be requested from the given URI if serverCertificate is not provided. Can be filled in by advanced DRM config.
  external String serverCertificateUri;

  /// Array.<!shaka.extern.InitDataOverride>	Defaults to [], e.g., no override.
  /// A list of initialization data which override any initialization data found in the content. See also shaka.extern.InitDataOverride.
  external List<InitDataOverride> initData;

  /// Set.<string>	Defaults to the empty Set
  ///  If not empty, contains the default key IDs for this key system, as lowercase hex strings.
  external List<String> keyIds;
}
