import 'package:datatower_ai_core_flutter/src/pigeon/dt_ias.g.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

class DTIasReport {
  static final DTIasPigeon _pigeon = DTIasPigeon();

  static void reportPurchaseSuccess(
      String originalOrderId,
      String orderId,
      String sku,
      double price,
      String currency,
      { JsonMap? properties }
  ) {
    _pigeon.reportPurchaseSuccess(originalOrderId, orderId, sku, price, currency, properties);
  }
}