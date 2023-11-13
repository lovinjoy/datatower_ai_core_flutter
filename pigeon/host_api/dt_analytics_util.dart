import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/pigeon/dt_analytics_util.g.dart',
  dartOptions: DartOptions(),
  kotlinOut:
      'android/src/main/kotlin/ai/datatower/datatower_ai_core/pigeon/DtAnalyticsUtil.g.kt',
  kotlinOptions: KotlinOptions(errorClassName: "DtAnalyticsUtilFlutterError"),
  objcHeaderOut: 'ios/Classes/pigeon/dt_analytics_util.g.h',
  objcSourceOut: 'ios/Classes/pigeon/dt_analytics_util.g.m',
  objcOptions: ObjcOptions(prefix: 'DT'),
  dartPackageName: 'datatower_ai_core',
))
@HostApi()
abstract class DTAnalyticsUtilPigeon {
  void trackTimerStart(String eventName);

  void trackTimerPause(String eventName);

  void trackTimerResume(String eventName);

  void trackTimerEnd(String eventName, Map<String, Object>? properties);
}
