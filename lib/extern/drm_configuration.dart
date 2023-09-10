@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';
import 'dart:js';
import 'package:js/js.dart';

import 'extern.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.DrmConfiguration
@JS('DrmConfiguration')
class DrmConfiguration {
  ///	shaka.extern.RetryParameters	Retry parameters for license requests.
  external RetryParameters retryParameters;

  ///	Object.<string, string>	Required for all but the clear key CDM.
  /// A dictionary which maps key system IDs to their license servers. For example, {'com.widevine.alpha': 'https://example.com/drm'}.
  external JSObject servers;

  ///	Object.<string, string>	Forces the use of the Clear Key CDM. A map of key IDs (hex or base64) to keys (hex or base64).
  external JSObject clearKeys;

  ///	boolean	Defaults to false.
  /// True to configure drm to delay sending a license request until a user actually starts playing content.
  external bool delayLicenseRequestUntilPlayed;

  ///	boolean	Defaults to false.
  /// True to configure drm to try playback with given persistent session ids before requesting a license. Also prevents the session removal at playback stop, as-to be able to re-use it later.
  external bool persistentSessionOnlinePlayback;

  ///	Array.<PersistentSessionMetadata>	Persistent sessions metadata to load before starting playback
  external JsArray persistentSessionsMetadata;

  ///	Object.<string, shaka.extern.AdvancedDrmConfiguration>	Optional.
  /// A dictionary which maps key system IDs to advanced DRM configuration for those key systems.
  external JSObject advanced;

  ///	shaka.extern.InitDataTransform | undefined	Optional.
  /// If given, this function is called with the init data from the manifest/media and should return the (possibly transformed) init data to pass to the browser.
  external InitDataTransform initDataTransform;

  ///	boolean	Optional.
  /// If set to true, prints logs containing the license exchange. This includes the init data, request, and response data, printed as base64 strings. Don't use in production, for debugging only; has no affect in release builds as logging is removed.
  external bool? logLicenseExchange;

  ///	number	Defaults to 1.
  ///The frequency in seconds with which to check the expiration of a session.
  external num updateExpirationTime;

  ///	Array.<string>	Defaults to an empty array.
  /// Specifies the priorties of available DRM key systems.
  external JsArray<String> preferredKeySystems;

  ///	Object.<string, string>	A map of key system name to key system name.
  external JsObject keySystemsMapping;

  ///	boolean	Defaults to true on Xbox One, and false for all other browsers.
  /// When true parse DRM init data from pssh boxes in media and init segments and ignore 'encrypted' events. This is required when using in-band key rotation on Xbox One.
  external bool parseInbandPsshEnabled;

  ///	string	By default (''), do not check the HDCP version.
  /// Indicates the minimum version of HDCP to start the playback of encrypted streams. May be ignored if not supported by the device.
  external String minHdcpVersion;
}
