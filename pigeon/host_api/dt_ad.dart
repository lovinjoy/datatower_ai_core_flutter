// ignore_for_file: constant_identifier_names
import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/pigeon/dt_ad.g.dart',
  dartOptions: DartOptions(),
  kotlinOut:
      'android/src/main/kotlin/com/lovinjoy/datatower_ai_core_flutter/pigeon/DtAd.g.kt',
  kotlinOptions: KotlinOptions(errorClassName: "DtAdFlutterError"),
  objcHeaderOut: 'ios/Classes/pigeon/dt_ad.g.h',
  objcSourceOut: 'ios/Classes/pigeon/dt_ad.g.m',
  objcOptions: ObjcOptions(prefix: 'DT'),
  dartPackageName: 'datatower_ai_core_flutter',
))
enum AdTypeDart {
  IDLE,
  BANNER,
  INTERSTITIAL,
  NATIVE,
  REWARDED,
  REWARDED_INTERSTITIAL,
  APP_OPEN,
  MREC;
}

enum AdMediationDart {
  IDLE,
  MOPUB,
  MAX,
  HISAVANA,
  COMBO;
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
  LOVINJOYADS;
}

@HostApi()
abstract class DTAdPigeon {
  void reportLoadBegin(String id, AdTypeDart type, AdPlatformDart platform,
      String seq, Map<String, Object> properties);

  void reportLoadEnd(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      int duration,
      bool result,
      String seq,
      int errorCode,
      String errorMessage,
      Map<String, Object> properties);

  void reportToShow(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      String location,
      String seq,
      Map<String, Object> properties,
      String entrance);

  void reportShow(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      String location,
      String seq,
      Map<String, Object> properties,
      String entrance);

  void reportShowFailed(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      String location,
      String seq,
      int errorCode,
      String errorMessage,
      Map<String, Object> properties,
      String entrance);

  void reportClose(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      String location,
      String seq,
      Map<String, Object> properties,
      String entrance);

  void reportClick(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      String location,
      String seq,
      Map<String, Object> properties,
      String entrance);

  void reportRewarded(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      String location,
      String seq,
      Map<String, Object> properties,
      String entrance);

  void reportConversionByClick(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      String location,
      String seq,
      Map<String, Object> properties,
      String entrance);

  void reportConversionByLeftApp(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      String location,
      String seq,
      Map<String, Object> properties,
      String entrance);

  void reportConversionByRewarded(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      String location,
      String seq,
      Map<String, Object> properties,
      String entrance);

  void reportPaid(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      String location,
      String seq,
      String value,
      String currency,
      String precision,
      Map<String, Object> properties,
      String entrance);

  void reportPaidWithMediation(
    String id,
    AdTypeDart type,
    AdPlatformDart platform,
    String location,
    String seq,
    AdMediationDart mediation,
    String mediationId,
    String value,
    String precision,
    String country,
    Map<String, Object> properties,
  );

  void reportLeftApp(
      String id,
      AdTypeDart type,
      AdPlatformDart platform,
      String location,
      String seq,
      Map<String, Object> properties,
      String entrance);
}
