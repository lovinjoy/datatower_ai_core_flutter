import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/pigeon/dt_iap.g.dart',
  dartOptions: DartOptions(),
  kotlinOut:
      'android/src/main/kotlin/com/example/datatower_ai_core_flutter/pigeon/DtIap.g.kt',
  kotlinOptions: KotlinOptions(errorClassName: "DtIapFlutterError"),
  objcHeaderOut: 'ios/Classes/pigeon/dt_iap.g.h',
  objcSourceOut: 'ios/Classes/pigeon/dt_iap.g.m',
  objcOptions: ObjcOptions(prefix: 'DT'),
  dartPackageName: 'datatower_ai_core_flutter',
))
@HostApi()
abstract class DTIapPigeon {
  void reportPurchaseSuccess(String order, String sku, double price,
      String currency, Map<String, Object>? properties);
}
