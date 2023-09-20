// ignore_for_file: constant_identifier_names
import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/pigeon/dt_ad.g.dart',
  dartOptions: DartOptions(),
  kotlinOut:
      'android/src/main/kotlin/com/example/datatower_ai_core_flutter/pigeon/DtAd.g.kt',
  kotlinOptions: KotlinOptions(errorClassName: "DtAdFlutterError"),
  objcHeaderOut: 'ios/Classes/pigeon/dt_ad.g.h',
  objcSourceOut: 'ios/Classes/pigeon/dt_ad.g.m',
  objcOptions: ObjcOptions(prefix: 'DT'),
  dartPackageName: 'datatower_ai_core_flutter',
))
enum AdTypeDart {
  IDLE(-1),
  BANNER(0),
  INTERSTITIAL(1),
  NATIVE(2),
  REWARDED(3),
  REWARDED_INTERSTITIAL(4),
  APP_OPEN(5),
  MREC(6);

  final int value;
  const AdTypeDart(this.value);
}

enum AdMediationDart {
  IDLE(-1),
  MOPUB(0),
  MAX(1),
  HISAVANA(2),
  COMBO(3);

  final int value;
  const AdMediationDart(this.value);
}

enum AdPlatformDart {
  UNDISCLOSED(-2),
  IDLE(-1),
  ADMOB(0),
  MOPUB(1),
  ADCOLONY(2),
  APPLOVIN(3),
  CHARTBOOST(4),
  FACEBOOK(5),
  INMOBI(6),
  IRONSOURCE(7),
  PANGLE(8),
  SNAP_AUDIENCE_NETWORK(9),
  TAPJOY(10),
  UNITY_ADS(11),
  VERIZON_MEDIA(12),
  VUNGLE(13),
  ADX(14),
  COMBO(15),
  BIGO(16),
  HISAVANA(17),
  APPLOVIN_EXCHANGE(18),
  LOVINJOYADS(33);

  final int value;
  const AdPlatformDart(this.value);
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
