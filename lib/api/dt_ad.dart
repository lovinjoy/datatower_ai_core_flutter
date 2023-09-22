import 'package:datatower_ai_core_flutter/datatower_ai_core_flutter.dart';
import 'package:datatower_ai_core_flutter/src/pigeon/dt_ad.g.dart';
import 'package:datatower_ai_core_flutter/src/base/dt_api.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

@DTApi()
class DTAdReport {
  static final DTAdPigeon _pigeon = DTAdPigeon();

  static void reportLoadBegin(
      String id, AdTypeDart type, AdPlatformDart platform, String seq,
      {JsonMap? properties}) {
    _pigeon.reportLoadBegin(id, type, platform, seq, properties ?? {});
  }

  static void reportLoadEnd(String id, AdTypeDart type, AdPlatformDart platform,
      int duration, bool result, String seq,
      {int errorCode = 0, String errorMessage = "", JsonMap? properties}) {
    _pigeon.reportLoadEnd(id, type, platform, duration, result, seq, errorCode,
        errorMessage, properties ?? {});
  }

  static void reportToShow(String id, AdTypeDart type, AdPlatformDart platform,
      String location, String seq,
      {JsonMap? properties, String? entrance}) {
    _pigeon.reportToShow(
        id, type, platform, location, seq, properties ?? {}, entrance ?? "");
  }

  static void reportShow(String id, AdTypeDart type, AdPlatformDart platform,
      String location, String seq,
      {JsonMap? properties, String? entrance}) {
    _pigeon.reportShow(
        id, type, platform, location, seq, properties ?? {}, entrance ?? "");
  }

  static void reportShowFailed(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      String location,
      String seq,
      int errorCode,
      String errorMessage,
      {JsonMap? properties,
      String? entrance}) {
    _pigeon.reportShowFailed(id, type, platform, location, seq, errorCode,
        errorMessage, properties ?? {}, entrance ?? "");
  }

  static void reportClose(String id, AdTypeDart type, AdPlatformDart platform,
      String location, String seq,
      {JsonMap? properties, String? entrance}) {
    _pigeon.reportClose(
        id, type, platform, location, seq, properties ?? {}, entrance ?? "");
  }

  static void reportClick(String id, AdTypeDart type, AdPlatformDart platform,
      String location, String seq,
      {JsonMap? properties, String? entrance}) {
    _pigeon.reportClick(
        id, type, platform, location, seq, properties ?? {}, entrance ?? "");
  }

  static void reportRewarded(String id, AdTypeDart type,
      AdPlatformDart platform, String location, String seq,
      {JsonMap? properties, String? entrance}) {
    _pigeon.reportRewarded(
        id, type, platform, location, seq, properties ?? {}, entrance ?? "");
  }

  static void reportConversionByClick(String id, AdTypeDart type,
      AdPlatformDart platform, String location, String seq,
      {JsonMap? properties, String? entrance}) {
    _pigeon.reportConversionByClick(
        id, type, platform, location, seq, properties ?? {}, entrance ?? "");
  }

  static void reportConversionByLeftApp(String id, AdTypeDart type,
      AdPlatformDart platform, String location, String seq,
      {JsonMap? properties, String? entrance}) {
    _pigeon.reportConversionByLeftApp(
        id, type, platform, location, seq, properties ?? {}, entrance ?? "");
  }

  static void reportConversionByRewarded(String id, AdTypeDart type,
      AdPlatformDart platform, String location, String seq,
      {JsonMap? properties, String? entrance}) {
    _pigeon.reportConversionByRewarded(
        id, type, platform, location, seq, properties ?? {}, entrance ?? "");
  }

  static void reportPaid(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      String location,
      String seq,
      String value,
      String currency,
      String precision,
      {JsonMap? properties,
      String? entrance}) {
    _pigeon.reportPaid(id, type, platform, location, seq, value, currency,
        precision, properties ?? {}, entrance ?? "");
  }

  static void reportPaidWithMediation(
    String id,
    AdTypeDart type,
    AdPlatformDart platform,
    String location,
    String seq,
    AdMediationDart mediation,
    String mediationId,
    String value,
    String currency,
    String precision, {
    JsonMap? properties,
  }) {
    _pigeon.reportPaidWithMediation(id, type, platform, location, seq,
        mediation, mediationId, value, currency, precision, properties ?? {});
  }

  static void reportLeftApp(String id, AdTypeDart type, AdPlatformDart platform,
      String location, String seq,
      {JsonMap? properties, String? entrance}) {
    _pigeon.reportLeftApp(
        id, type, platform, location, seq, properties ?? {}, entrance ?? "");
  }
}
