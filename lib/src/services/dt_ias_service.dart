import 'package:datatower_ai_core_flutter/src/services/base_service.dart';

import 'package:datatower_ai_core_flutter/util/type_util.dart';

class DTIasService extends BaseDTService {
  DTIasService(super.methodChannel): super(serviceName: "dt_ias");

  void reportPurchaseSuccess(
      String originalOrderId,
      String orderId,
      String sku,
      double price,
      String currency,
      { JsonMap? properties }
  ) {
    getMethod("reportPurchaseSuccess")
        .putArg("originalOrderId", originalOrderId)
        .putArg("orderId", originalOrderId)
        .putArg("sku", sku)
        .putArg("price", price)
        .putArg("currency", currency)
        .putArg("properties", properties)
        .call();
  }

  Future<String?> generateUUID() {
    return getMethod("generateUUID").call();
  }
}