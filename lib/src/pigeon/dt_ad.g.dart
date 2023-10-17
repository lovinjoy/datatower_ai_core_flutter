// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

enum AdTypeDart {
  IDLE,
  BANNER,
  INTERSTITIAL,
  NATIVE,
  REWARDED,
  REWARDED_INTERSTITIAL,
  APP_OPEN,
  MREC,
}

enum AdMediationDart {
  IDLE,
  MOPUB,
  MAX,
  HISAVANA,
  COMBO,
  TOPON,
  TRADPLUS,
  TOBID,
}

enum AdPlatformDart {
  UNDISCLOSED,
  IDLE,
  ADMOB,
  MOPUB,
  ADCOLONY,
  APPLOVIN,
  CHARTBOOST,
  FACEBOOK,
  INMOBI,
  IRONSOURCE,
  PANGLE,
  SNAP_AUDIENCE_NETWORK,
  TAPJOY,
  UNITY_ADS,
  VERIZON_MEDIA,
  VUNGLE,
  ADX,
  COMBO,
  BIGO,
  HISAVANA,
  APPLOVIN_EXCHANGE,
  MINTEGRAL,
  LIFTOFF,
  A4G,
  GOOGLE_AD_MANAGER,
  FYBER,
  MAIO,
  CRITEO,
  MYTARGET,
  OGURY,
  APPNEXT,
  KIDOZ,
  SMAATO,
  START_IO,
  VERVE,
  LOVINJOYADS,
  YANDEX,
  REKLAMUP,
}

class DTAdPigeon {
  /// Constructor for [DTAdPigeon].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  DTAdPigeon({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = StandardMessageCodec();

  Future<void> reportLoadBegin(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, String arg_seq, Map<String?, Object?> arg_properties, AdMediationDart arg_mediation, String arg_mediationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportLoadBegin', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_seq, arg_properties, arg_mediation.index, arg_mediationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> reportLoadEnd(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, int arg_duration, bool arg_result, String arg_seq, int arg_errorCode, String arg_errorMessage, Map<String?, Object?> arg_properties, AdMediationDart arg_mediation, String arg_mediationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportLoadEnd', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_duration, arg_result, arg_seq, arg_errorCode, arg_errorMessage, arg_properties, arg_mediation.index, arg_mediationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> reportToShow(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, String arg_location, String arg_seq, Map<String?, Object?> arg_properties, String arg_entrance, AdMediationDart arg_mediation, String arg_mediationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportToShow', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_location, arg_seq, arg_properties, arg_entrance, arg_mediation.index, arg_mediationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> reportShow(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, String arg_location, String arg_seq, Map<String?, Object?> arg_properties, String arg_entrance, AdMediationDart arg_mediation, String arg_mediationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportShow', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_location, arg_seq, arg_properties, arg_entrance, arg_mediation.index, arg_mediationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> reportShowFailed(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, String arg_location, String arg_seq, int arg_errorCode, String arg_errorMessage, Map<String?, Object?> arg_properties, String arg_entrance, AdMediationDart arg_mediation, String arg_mediationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportShowFailed', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_location, arg_seq, arg_errorCode, arg_errorMessage, arg_properties, arg_entrance, arg_mediation.index, arg_mediationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> reportClose(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, String arg_location, String arg_seq, Map<String?, Object?> arg_properties, String arg_entrance, AdMediationDart arg_mediation, String arg_mediationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportClose', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_location, arg_seq, arg_properties, arg_entrance, arg_mediation.index, arg_mediationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> reportClick(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, String arg_location, String arg_seq, Map<String?, Object?> arg_properties, String arg_entrance, AdMediationDart arg_mediation, String arg_mediationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportClick', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_location, arg_seq, arg_properties, arg_entrance, arg_mediation.index, arg_mediationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> reportRewarded(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, String arg_location, String arg_seq, Map<String?, Object?> arg_properties, String arg_entrance, AdMediationDart arg_mediation, String arg_mediationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportRewarded', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_location, arg_seq, arg_properties, arg_entrance, arg_mediation.index, arg_mediationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> reportConversionByClick(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, String arg_location, String arg_seq, Map<String?, Object?> arg_properties, String arg_entrance, AdMediationDart arg_mediation, String arg_mediationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportConversionByClick', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_location, arg_seq, arg_properties, arg_entrance, arg_mediation.index, arg_mediationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> reportConversionByLeftApp(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, String arg_location, String arg_seq, Map<String?, Object?> arg_properties, String arg_entrance, AdMediationDart arg_mediation, String arg_mediationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportConversionByLeftApp', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_location, arg_seq, arg_properties, arg_entrance, arg_mediation.index, arg_mediationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> reportConversionByRewarded(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, String arg_location, String arg_seq, Map<String?, Object?> arg_properties, String arg_entrance, AdMediationDart arg_mediation, String arg_mediationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportConversionByRewarded', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_location, arg_seq, arg_properties, arg_entrance, arg_mediation.index, arg_mediationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> reportPaid(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, String arg_location, String arg_seq, String arg_value, String arg_currency, String arg_precision, Map<String?, Object?> arg_properties, String arg_entrance, AdMediationDart arg_mediation, String arg_mediationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportPaid', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_location, arg_seq, arg_value, arg_currency, arg_precision, arg_properties, arg_entrance, arg_mediation.index, arg_mediationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> reportPaidWithCountry(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, String arg_location, String arg_seq, AdMediationDart arg_mediation, String arg_mediationId, String arg_value, String arg_precision, String arg_country, Map<String?, Object?> arg_properties) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportPaidWithCountry', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_location, arg_seq, arg_mediation.index, arg_mediationId, arg_value, arg_precision, arg_country, arg_properties]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> reportLeftApp(String arg_id, AdTypeDart arg_type, AdPlatformDart arg_platform, String arg_location, String arg_seq, Map<String?, Object?> arg_properties, String arg_entrance, AdMediationDart arg_mediation, String arg_mediationId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.datatower_ai_core_flutter.DTAdPigeon.reportLeftApp', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_id, arg_type.index, arg_platform.index, arg_location, arg_seq, arg_properties, arg_entrance, arg_mediation.index, arg_mediationId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }
}
