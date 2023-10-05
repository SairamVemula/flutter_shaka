@JS('shaka.extern')
library shaka.extern;

import 'dart:convert';
import 'dart:developer';
// ignore: depend_on_referenced_packages
import 'dart:js';
import 'dart:js_interop';

import 'package:js/js.dart';
import 'package:js/js_util.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.extern.html#.Track
// @JS('Track')
class Track {
  /// The unique ID of the track.
  num? id;

  /// If true, this is the track being streamed (another track may be visible/audible in the buffer).
  bool? active;

  /// The type of track, either 'variant' or 'text' or 'image'.
  String? type;

  /// The bandwidth required to play the track, in bits/sec.
  num? bandwidth;

  /// The language of the track, or 'und' if not given. This value is normalized as follows - language part is always lowercase and translated to ISO-639-1 when possible, locale part is always uppercase, i.e. 'en-US'.
  String? language;

  /// The track label, which is unique text that should describe the track.
  String? label;

  ///  nullable (only for text tracks) The kind of text track, either 'caption' or 'subtitle'.
  String? kind;

  /// The video width provided in the manifest, if present.
  num? width;

  /// number	<nullable>
  /// The video height provided in the manifest, if present.
  num? height;

  /// The video framerate provided in the manifest, if present.
  num? frameRate;

  /// The video pixel aspect ratio provided in the manifest, if present.
  String? pixelAspectRatio;

  /// The video HDR provided in the manifest, if present.
  String? hdr;

  /// The MIME type of the content provided in the manifest.
  String? mimeType;

  ///The audio MIME type of the content provided in the manifest.
  String? audioMimeType;

  ///The video MIME type of the content provided in the manifest.
  String? videoMimeType;

  ///The audio/video codecs string provided in the manifest, if present.
  String? codecs;

  ///The audio codecs string provided in the manifest, if present.
  String? audioCodec;

  /// The video codecs string provided in the manifest, if present.
  String? videoCodec;

  /// True indicates that this in the primary language for the content. This flag is based on signals from the manifest. This can be a useful hint about which language should be the default, and indicates which track Shaka will use when the user's language preference cannot be satisfied.
  bool? primary;

  /// roles	Array.<string>		The roles of the track, e.g. 'main', 'caption', or 'commentary'.
  List<dynamic>? roles;

  /// Array.<string>		The roles of the audio in the track, e.g. 'main' or 'commentary'. Will be null for text tracks or variant tracks without audio.
  List<dynamic>? audioRoles;

  /// The DASH accessibility descriptor, if one was provided for this track. For text tracks, this describes the text; otherwise, this is for the audio.
  dynamic
      accessibilityPurpose; // TODO: shaka.media.ManifestParser.AccessibilityPurpose	<nullable>

  /// indicates that this in the forced text language for the content. This flag is based on signals from the manifest.
  bool? forced;

  /// nullable (only for variant tracks) The video stream id.
  num? videoId;

  /// <nullable> (only for variant tracks) The audio stream id.
  num? audioId;

  /// <nullable> The count of the audio track channels.
  num? channelsCount;

  /// <nullable> Specifies the maximum sampling rate of the content.
  num? audioSamplingRate;

  /// The value is a grid-item-dimension consisting of two positive decimal integers in the format: column-x-row ('4x3'). It describes the arrangement of Images in a Grid. The minimum valid LAYOUT is '1x1'.
  String? tilesLayout;

  /// True indicates that the content has spatial audio. This flag is based on signals from the manifest.
  bool? spatialAudio;

  /// nullable (only for variant tracks) The audio stream's bandwidth if known.
  num? audioBandwidth;

  /// nullable(only for variant tracks) The video stream's bandwidth if known.
  num? videoBandwidth;

  /// nullable (variant tracks only) The original ID of the video part of the track, if any, as it appeared in the original manifest.
  String? originalVideoId;

  /// nullable (variant tracks only) The original ID of the audio part of the track, if any, as it appeared in the original manifest.
  String? originalAudioId;

  /// nullable (text tracks only) The original ID of the text track, if any, as it appeared in the original manifest.
  String? originalTextId;

  /// nullable (image tracks only) The original ID of the image track, if any, as it appeared in the original manifest.
  String? originalImageId;

  /// nullable The original language of the track, if any, as it appeared in the original manifest. This is the exact value provided in the manifest; for normalized value use language property.
  String? originalLanguage;
  Track({
    required this.id,
    required this.active,
    required this.type,
    required this.bandwidth,
    required this.language,
    this.label,
    this.kind,
    this.width,
    this.height,
    required this.frameRate,
    this.pixelAspectRatio,
    this.hdr,
    this.mimeType,
    this.audioMimeType,
    this.videoMimeType,
    this.codecs,
    this.audioCodec,
    this.videoCodec,
    required this.primary,
    required this.roles,
    required this.audioRoles,
    required this.accessibilityPurpose,
    required this.forced,
    this.videoId,
    this.audioId,
    this.channelsCount,
    this.audioSamplingRate,
    this.tilesLayout,
    required this.spatialAudio,
    this.audioBandwidth,
    this.videoBandwidth,
    this.originalVideoId,
    this.originalAudioId,
    this.originalTextId,
    this.originalImageId,
    this.originalLanguage,
  });

  factory Track.fromJson(String source) => Track.fromMap(json.decode(source));

  factory Track.fromMap(Map<String, dynamic> map) {
    return Track(
      id: (map['id']),
      active: (map['active']),
      type: (map['type']),
      bandwidth: (map['bandwidth']),
      language: (map['language']),
      label: map['label'] != null ? (map['label']) : null,
      kind: map['kind'] != null ? (map['kind']) : null,
      width: map['width'] != null ? (map['width']) : null,
      frameRate: (map['frameRate']),
      height: map['height'],
      pixelAspectRatio:
          map['pixelAspectRatio'] != null ? (map['pixelAspectRatio']) : null,
      hdr: map['hdr'] != null ? (map['hdr']) : null,
      mimeType: map['mimeType'] != null ? (map['mimeType']) : null,
      audioMimeType:
          map['audioMimeType'] != null ? (map['audioMimeType']) : null,
      videoMimeType:
          map['videoMimeType'] != null ? (map['videoMimeType']) : null,
      codecs: map['codecs'] != null ? (map['codecs']) : null,
      audioCodec: map['audioCodec'] != null ? (map['audioCodec']) : null,
      videoCodec: map['videoCodec'] != null ? (map['videoCodec']) : null,
      primary: (map['primary']),
      roles: (map['roles']),
      audioRoles: (map['audioRoles']),
      accessibilityPurpose: map['accessibilityPurpose'],
      forced: (map['forced']),
      videoId: map['videoId'] != null ? (map['videoId']) : null,
      audioId: map['audioId'] != null ? (map['audioId']) : null,
      channelsCount:
          map['channelsCount'] != null ? (map['channelsCount']) : null,
      audioSamplingRate:
          map['audioSamplingRate'] != null ? (map['audioSamplingRate']) : null,
      tilesLayout: map['tilesLayout'] != null ? (map['tilesLayout']) : null,
      spatialAudio: (map['spatialAudio']),
      audioBandwidth:
          map['audioBandwidth'] != null ? (map['audioBandwidth']) : null,
      videoBandwidth:
          map['videoBandwidth'] != null ? (map['videoBandwidth']) : null,
      originalVideoId:
          map['originalVideoId'] != null ? (map['originalVideoId']) : null,
      originalAudioId:
          map['originalAudioId'] != null ? (map['originalAudioId']) : null,
      originalTextId:
          map['originalTextId'] != null ? (map['originalTextId']) : null,
      originalImageId:
          map['originalImageId'] != null ? (map['originalImageId']) : null,
      originalLanguage:
          map['originalLanguage'] != null ? (map['originalLanguage']) : null,
    );
  }

  @override
  int get hashCode {
    return id.hashCode ^
        active.hashCode ^
        type.hashCode ^
        bandwidth.hashCode ^
        language.hashCode ^
        label.hashCode ^
        kind.hashCode ^
        width.hashCode ^
        height.hashCode ^
        frameRate.hashCode ^
        pixelAspectRatio.hashCode ^
        hdr.hashCode ^
        mimeType.hashCode ^
        audioMimeType.hashCode ^
        videoMimeType.hashCode ^
        codecs.hashCode ^
        audioCodec.hashCode ^
        videoCodec.hashCode ^
        primary.hashCode ^
        roles.hashCode ^
        audioRoles.hashCode ^
        accessibilityPurpose.hashCode ^
        forced.hashCode ^
        videoId.hashCode ^
        audioId.hashCode ^
        channelsCount.hashCode ^
        audioSamplingRate.hashCode ^
        tilesLayout.hashCode ^
        spatialAudio.hashCode ^
        audioBandwidth.hashCode ^
        videoBandwidth.hashCode ^
        originalVideoId.hashCode ^
        originalAudioId.hashCode ^
        originalTextId.hashCode ^
        originalImageId.hashCode ^
        originalLanguage.hashCode;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Track &&
        other.id == id &&
        other.active == active &&
        other.type == type &&
        other.bandwidth == bandwidth &&
        other.language == language &&
        other.label == label &&
        other.kind == kind &&
        other.width == width &&
        other.height == height &&
        other.frameRate == frameRate &&
        other.pixelAspectRatio == pixelAspectRatio &&
        other.hdr == hdr &&
        other.mimeType == mimeType &&
        other.audioMimeType == audioMimeType &&
        other.videoMimeType == videoMimeType &&
        other.codecs == codecs &&
        other.audioCodec == audioCodec &&
        other.videoCodec == videoCodec &&
        other.primary == primary &&
        other.roles == roles &&
        other.audioRoles == audioRoles &&
        other.accessibilityPurpose == accessibilityPurpose &&
        other.forced == forced &&
        other.videoId == videoId &&
        other.audioId == audioId &&
        other.channelsCount == channelsCount &&
        other.audioSamplingRate == audioSamplingRate &&
        other.tilesLayout == tilesLayout &&
        other.spatialAudio == spatialAudio &&
        other.audioBandwidth == audioBandwidth &&
        other.videoBandwidth == videoBandwidth &&
        other.originalVideoId == originalVideoId &&
        other.originalAudioId == originalAudioId &&
        other.originalTextId == originalTextId &&
        other.originalImageId == originalImageId &&
        other.originalLanguage == originalLanguage;
  }

  Track copyWith({
    num? id,
    bool? active,
    String? type,
    num? bandwidth,
    String? language,
    String? label,
    String? kind,
    num? width,
    num? height,
    num? frameRate,
    String? pixelAspectRatio,
    String? hdr,
    String? mimeType,
    String? audioMimeType,
    String? videoMimeType,
    String? codecs,
    String? audioCodec,
    String? videoCodec,
    bool? primary,
    JsArray<String>? roles,
    JsArray<String>? audioRoles,
    //? accessibilityPurpose,
    bool? forced,
    num? videoId,
    num? audioId,
    num? channelsCount,
    num? audioSamplingRate,
    String? tilesLayout,
    bool? spatialAudio,
    num? audioBandwidth,
    num? videoBandwidth,
    String? originalVideoId,
    String? originalAudioId,
    String? originalTextId,
    String? originalImageId,
    String? originalLanguage,
  }) {
    return Track(
      id: id ?? this.id,
      active: active ?? this.active,
      type: type ?? this.type,
      bandwidth: bandwidth ?? this.bandwidth,
      language: language ?? this.language,
      label: label ?? this.label,
      kind: kind ?? this.kind,
      width: width ?? this.width,
      height: height ?? this.height,
      frameRate: frameRate ?? this.frameRate,
      pixelAspectRatio: pixelAspectRatio ?? this.pixelAspectRatio,
      hdr: hdr ?? this.hdr,
      mimeType: mimeType ?? this.mimeType,
      audioMimeType: audioMimeType ?? this.audioMimeType,
      videoMimeType: videoMimeType ?? this.videoMimeType,
      codecs: codecs ?? this.codecs,
      audioCodec: audioCodec ?? this.audioCodec,
      videoCodec: videoCodec ?? this.videoCodec,
      primary: primary ?? this.primary,
      roles: roles ?? this.roles,
      audioRoles: audioRoles ?? this.audioRoles,
      accessibilityPurpose: accessibilityPurpose,
      forced: forced ?? this.forced,
      videoId: videoId ?? this.videoId,
      audioId: audioId ?? this.audioId,
      channelsCount: channelsCount ?? this.channelsCount,
      audioSamplingRate: audioSamplingRate ?? this.audioSamplingRate,
      tilesLayout: tilesLayout ?? this.tilesLayout,
      spatialAudio: spatialAudio ?? this.spatialAudio,
      audioBandwidth: audioBandwidth ?? this.audioBandwidth,
      videoBandwidth: videoBandwidth ?? this.videoBandwidth,
      originalVideoId: originalVideoId ?? this.originalVideoId,
      originalAudioId: originalAudioId ?? this.originalAudioId,
      originalTextId: originalTextId ?? this.originalTextId,
      originalImageId: originalImageId ?? this.originalImageId,
      originalLanguage: originalLanguage ?? this.originalLanguage,
    );
  }

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'active': active});
    result.addAll({'type': type});
    result.addAll({'bandwidth': bandwidth});
    result.addAll({'language': language});
    if (label != null) {
      result.addAll({'label': label!});
    }
    if (kind != null) {
      result.addAll({'kind': kind!});
    }
    if (width != null) {
      result.addAll({'width': width!});
    }
    if (height != null) {
      result.addAll({'height': height!});
    }
    result.addAll({'frameRate': frameRate});
    if (pixelAspectRatio != null) {
      result.addAll({'pixelAspectRatio': pixelAspectRatio!});
    }
    if (hdr != null) {
      result.addAll({'hdr': hdr!});
    }
    if (mimeType != null) {
      result.addAll({'mimeType': mimeType!});
    }
    if (audioMimeType != null) {
      result.addAll({'audioMimeType': audioMimeType!});
    }
    if (videoMimeType != null) {
      result.addAll({'videoMimeType': videoMimeType!});
    }
    if (codecs != null) {
      result.addAll({'codecs': codecs!});
    }
    if (audioCodec != null) {
      result.addAll({'audioCodec': audioCodec!});
    }
    if (videoCodec != null) {
      result.addAll({'videoCodec': videoCodec!});
    }
    result.addAll({'primary': primary});
    result.addAll({'roles': roles});
    result.addAll({'audioRoles': audioRoles});
    result.addAll({'accessibilityPurpose': accessibilityPurpose});
    result.addAll({'forced': forced});
    if (videoId != null) {
      result.addAll({'videoId': videoId!});
    }
    if (audioId != null) {
      result.addAll({'audioId': audioId!});
    }
    if (channelsCount != null) {
      result.addAll({'channelsCount': channelsCount!});
    }
    if (audioSamplingRate != null) {
      result.addAll({'audioSamplingRate': audioSamplingRate!});
    }
    if (tilesLayout != null) {
      result.addAll({'tilesLayout': tilesLayout!});
    }
    result.addAll({'spatialAudio': spatialAudio});
    if (audioBandwidth != null) {
      result.addAll({'audioBandwidth': audioBandwidth!});
    }
    if (videoBandwidth != null) {
      result.addAll({'videoBandwidth': videoBandwidth!});
    }
    if (originalVideoId != null) {
      result.addAll({'originalVideoId': originalVideoId!});
    }
    if (originalAudioId != null) {
      result.addAll({'originalAudioId': originalAudioId!});
    }
    if (originalTextId != null) {
      result.addAll({'originalTextId': originalTextId!});
    }
    if (originalImageId != null) {
      result.addAll({'originalImageId': originalImageId!});
    }
    if (originalLanguage != null) {
      result.addAll({'originalLanguage': originalLanguage!});
    }

    return result;
  }

  @override
  String toString() {
    return 'Track(id: $id, active: $active, type: $type, bandwidth: $bandwidth, language: $language, label: $label, kind: $kind, width: $width, height: $height, frameRate: $frameRate, pixelAspectRatio: $pixelAspectRatio, hdr: $hdr, mimeType: $mimeType, audioMimeType: $audioMimeType, videoMimeType: $videoMimeType, codecs: $codecs, audioCodec: $audioCodec, videoCodec: $videoCodec, primary: $primary, roles: $roles, audioRoles: $audioRoles, accessibilityPurpose: $accessibilityPurpose, forced: $forced, videoId: $videoId, audioId: $audioId, channelsCount: $channelsCount, audioSamplingRate: $audioSamplingRate, tilesLayout: $tilesLayout, spatialAudio: $spatialAudio, audioBandwidth: $audioBandwidth, videoBandwidth: $videoBandwidth, originalVideoId: $originalVideoId, originalAudioId: $originalAudioId, originalTextId: $originalTextId, originalImageId: $originalImageId, originalLanguage: $originalLanguage)';
  }

  get toJS => jsify(this);
}
