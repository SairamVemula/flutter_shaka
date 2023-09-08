@JS('shaka.extern')
library shaka.extern;

import 'dart:js_interop';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.OfflineConfiguration
@JS('OfflineConfiguration')
class OfflineConfiguration {
  ///	function	Called inside store() to determine which tracks to save from a manifest. It is passed an array of Tracks from the manifest and it should return an array of the tracks to store.
  external JSFunction trackSelectionCallback;

  ///	function	Called inside store() to determine if the content can be downloaded due to its estimated size. The estimated size of the download is passed and it must return if the download is allowed or not.
  external JSFunction downloadSizeCallback;

  ///	function	Called inside store() to give progress info back to the app. It is given the current manifest being stored and the progress of it being stored.
  external JSFunction progressCallback;

  ///	boolean	If true, store protected content with a persistent license so that no network is required to view. If false, store protected content without a persistent license. A network will be required to retrieve a temporary license to view. Defaults to true.
  external bool usePersistentLicense;

  ///	number	Number of parallel downloads. Note: normally browsers limit to 5 request in parallel, so putting a number higher than this will not help it download faster. Defaults to 5.
  external num numberOfParallelDownloads;
}
