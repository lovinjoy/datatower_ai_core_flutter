import 'package:datatower_ai_core_flutter/src/pigeon/dt_iap.g.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

class DTIapReport {
  static final DTIapPigeon _pigeon = DTIapPigeon();

  static void reportPurchaseSuccess(
    String order,
    String sku,
    double price,
    String currency,
    { JsonMap? properties }
  ) {
    _pigeon.reportPurchaseSuccess(order, sku, price, currency, properties);
  }
}