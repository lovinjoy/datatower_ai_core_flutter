import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
    PigeonOptions(
      dartOut: 'lib/src/pigeon/dt_analytics_util.g.dart',
      dartOptions: DartOptions(),
      kotlinOut: 'android/src/main/kotlin/com/example/datatower_ai_core_flutter/pigeon/DtAnalyticsUtil.g.kt',
      kotlinOptions: KotlinOptions(
          errorClassName: "DtAnalyticsUtilFlutterError"
      ),
      objcHeaderOut: 'ios/Runner/pigeon/dt_analytics_util.g.h',
      objcSourceOut: 'ios/Runner/pigeon/dt_analytics_util.g.m',
      objcOptions: ObjcOptions(prefix: 'DT'),
      dartPackageName: 'datatower_ai_core_flutter',
    )
)

@HostApi()
abstract class DTAnalyticsUtilPigeon {
  void trackTimerStart(String eventName);

  void trackTimerPause(String eventName);

  void trackTimerResume(String eventName);

  void trackTimerEnd(String eventName, Map<String, Object>? properties);
}
