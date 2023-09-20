import 'package:datatower_ai_core_flutter/src/method_channel/datatower_ai_core_flutter_platform_interface.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

class DTIapReport {
  static void reportPurchaseSuccess(
    String order,
    String sku,
    double price,
    String currency,
    { JsonMap? properties }
  ) {
    DatatowerAiCoreFlutterPlatform.instance.dtIapService.reportPurchaseSuccess(order, sku, price, currency, properties: properties);
  }

  static Future<String?> generateUUID() {
    return DatatowerAiCoreFlutterPlatform.instance.dtIapService.generateUUID();
  }
}