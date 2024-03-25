@JS('shaka.media')
library shaka.media;

import 'package:js/js.dart';

import '../media/media.dart' as media;

/// https://shaka-player-demo.appspot.com/docs/api/shaka.media.PresentationTimeline.html
@JS('PresentationTimeline')
class PresentationTimeline {
  external PresentationTimeline(
      num? presentationStartTime, num presentationDelay,
      [bool autoCorrectDrift = true]);

  /// Gets the presentation delay in seconds.
  external num getDelay();

  /// The presentation's duration in seconds. Infinity indicates that the presentation continues indefinitely.
  external num getDuration();

  /// The presentation's max segment duration in seconds.
  external num getMaxSegmentDuration();

  /// The presentation's start time in seconds.
  external num getPresentationStartTime();

  /// The current seek start time, in seconds, relative to the start of the presentation.
  external num getSafeSeekRangeStart(num offset);

  /// Gets the seek range end.
  external num getSeekRangeEnd();

  /// Gets the seek range start time.
  external num getSeekRangeStart();

  /// Gets the presentation's current segment availability end time. Segments starting after this time should be assumed to be unavailable.
  /// Returns:
  /// The current segment availability end time, in seconds, relative to the start of the presentation. For VOD, the availability end time is the content's duration. If the Player's playRangeEnd configuration is used, this can override the duration.
  external num getSegmentAvailabilityEnd();

  /// Gets the presentation's current segment availability start time. Segments ending at or before this time should be assumed to be unavailable.
  /// Returns:
  /// The current segment availability start time, in seconds, relative to the start of the presentation.
  external num getSegmentAvailabilityStart();

  /// True if the presentation is in progress (meaning not live, but also not completely available); otherwise, return false.
  external bool isInProgress();

  /// True if the presentation is live; otherwise, return false.
  external bool isLive();

  /// Lock the presentation timeline's start time. After this is called, no further adjustments to presentationStartTime_ will be permitted. This should be called after all Periods have been parsed, and all calls to notifySegments() from the initial manifest parse have been made. Without this, we can get assertion failures in SegmentIndex for certain DAI content. If DAI adds ad segments to the manifest faster than real-time, adjustments to presentationStartTime_ can cause availability windows to jump around on updates.
  external void lockStartTime();

  /// Gives PresentationTimeline a Stream's maximum segment duration so it can size and position the segment availability window. This function should be called once for each Stream (no more, no less), but does not have to be called if notifySegments() is called instead for a particular stream.
  external void notifyMaxSegmentDuration(num maxSegmentDuration);

  /// Gives PresentationTimeline a Stream's minimum segment start time.
  external void notifyMinSegmentStartTime(num startTime);

  /// Gives PresentationTimeline an array of segments so it can size and position the segment availability window, and account for missing segment information. These segments do not necessarily need to all be from the same stream.
  external void notifySegments(
      List<media.SegmentReference>
          startTime); //TODO: shaka.media.SegmentReference

  /// Gives PresentationTimeline a Stream's timeline so it can size and position the segment availability window, and account for missing segment information.
  external void notifyTimeRange(List<TimeRange> timeline, num startOffset);

  /// Offsets the segment times by the given amount.
  external void offset(num offset);

  /// Sets the presentation's segment availability time offset. This should be only set for Low Latency Dash. The segments are available earlier for download than the availability start time, so we can move closer to the live edge.
  external void setAvailabilityTimeOffset(num offset);

  /// Sets the clock offset, which is the difference between the client's clock and the server's clock, in milliseconds (i.e., serverTime = Date.now() + clockOffset).
  external void setClockOffset(num offset);

  /// Sets the presentation delay in seconds.
  external void setDelay(num delay);

  /// Sets the presentation's duration.
  /// The presentation's duration in seconds. Infinity indicates that the presentation continues indefinitely.
  external void setDuration(num duration);

  /// Sets the presentation's start time.
  /// The wall-clock time, in seconds, when the presentation started or will start. Only required for live.
  external void setPresentationStartTime(num presentationStartTime);

  /// Sets the presentation's segment availability duration. The segment availability duration should only be set for live.
  ///  The presentation's new segment availability duration in seconds.
  external void setSegmentAvailabilityDuration(num segmentAvailabilityDuration);

  /// Sets the presentation's static flag.
  ///  If true, the presentation is static, meaning all segments are available at once.
  external void setStatic(bool isStatic);

  /// Sets the start time of the user-defined seek range. This is only used for VOD content.
  external void setUserSeekStart(num time);

  /// Sets the start time of the user-defined seek range. This is only used for VOD content.
  external bool usingPresentationStartTime();
}

@JS('TimeRange')
class TimeRange {
  ///	The start time of the range.
  external num start;

  ///	The start time of the range in representation timescale units.
  external num unscaledStart;

  ///	The end time (exclusive) of the range.
  external num end;
}
