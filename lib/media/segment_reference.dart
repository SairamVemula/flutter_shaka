// ignore_for_file: non_constant_identifier_names, constant_identifier_names

@JS('shaka.media')
library shaka.media;

import 'dart:js';
import 'dart:js_interop';

import 'init_segment_reference.dart';
import '../extern/extern.dart' as extern;

/// https://shaka-player-demo.appspot.com/docs/api/shaka.media.SegmentReference.html
@JS('SegmentReference')
class SegmentReference {
  external SegmentReference(
      num startTime,
      num endTime,
      JsFunction uris,
      num startByte,
      num? endByte,
      InitSegmentReference initSegmentReference,
      num timestampOffset,
      num appendWindowStart,
      num appendWindowEnd,
      [JsArray<SegmentReference> partialReferences,
      String tilesLayout,
      num tileDuration,
      num syncTime,
      num status,
      extern.HlsAes128Key hlsAes128Key]);

  /// Returns the offset from the start of the resource to the end of the segment, inclusive. A value of null indicates that the segment extends to the end of the resource.
  external num getEndByte();

  /// Returns the segment's end time in seconds.
  external num getEndTime();

  /// Returns the offset from the start of the resource to the start of the segment.
  external num getStartByte();

  /// Returns the segment's start time in seconds.
  external num getStartTime();

  /// Returns the segment's status. shaka.media.SegmentReference.Status
  external num getStatus();

  /// Returns the segment's thumbnail sprite.
  external ThumbnailSprite getThumbnailSprite();

  /// Returns the segment's explicit tile duration. Only defined in image segments.
  external num getTileDuration();

  /// Returns the segment's tiles layout. Only defined in image segments.
  external String getTilesLayout();

  /// Creates and returns the URIs of the resource containing the segment.
  external JsArray<String> getUris();

  /// Returns true if the segment has a byterange optimization.
  external bool hasByterangeOptimization();

  /// Returns true if the segment is independent.
  external bool isIndependent();

  /// Returns true if the segment is preloaded.
  external bool isPreload();

  /// Mark the reference as byterange optimization. The "byterange optimization" means that it is playable using MP4 low latency streaming with chunked data.
  external void markAsByterangeOptimization();

  /// Mark the reference as non-independent.
  external void markAsNonIndependent();

  /// Mark the reference as preload.

  external void markAsPreload();

  /// Mark the reference as unavailable.
  external void markAsUnavailable();

  /// Offset the segment reference by a fixed amount.
  external void offset(num offset);

  /// Set the segment's thumbnail sprite.
  external void setThumbnailSprite(ThumbnailSprite thumbnailSprite);

  /// Sync this segment against a particular sync time that will serve as "0" in the presentation timeline.
  external void syncAgainst(lowestSyncTime);

  ///Rather than using booleans to communicate what the state of the reference, we have this enum.
  ///Type:
  ///number
  ///Properties:
  ///Name	Value	Type	Description
  ///AVAILABLE	0	number
  ///UNAVAILABLE	1	number
  ///MISSING	2	number
  external static num get Status;
}

@JS('ThumbnailSprite')
class ThumbnailSprite {
  ///	The thumbnail height in px.
  external num height;

  ///	The thumbnail left position in px.
  external num positionX;

  ///	The thumbnail top position in px.
  external num positionY;

  ///	The thumbnail width in px.
  external num width;
}
