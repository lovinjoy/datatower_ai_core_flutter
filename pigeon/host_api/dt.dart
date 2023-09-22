import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/pigeon/dt.g.dart',
  dartOptions: DartOptions(),
  kotlinOut:
      'android/src/main/kotlin/com/example/datatower_ai_core_flutter/pigeon/Dt.g.kt',
  kotlinOptions: KotlinOptions(errorClassName: "DtFlutterError"),
  objcHeaderOut: 'ios/Classes/pigeon/dt.g.h',
  objcSourceOut: 'ios/Classes/pigeon/dt.g.m',
  objcOptions: ObjcOptions(prefix: 'DT'),
  dartPackageName: 'datatower_ai_core_flutter',
))
@HostApi()
abstract class DTPigeon {
  void initSDK(
    String appId,
    String url,
    String channel,
    bool isDebug,
    int logLevel,
    Map<String, Object> commonProperties,
  );
}
