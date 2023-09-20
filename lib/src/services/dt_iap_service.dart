import 'package:datatower_ai_core_flutter/src/services/base_service.dart';

import 'package:datatower_ai_core_flutter/util/type_util.dart';

class DTIapService extends BaseDTService {
  DTIapService(super.methodChannel): super(serviceName: "dt_iap");

  void reportPurchaseSuccess(
    String order,
    String sku,
    double price,
    String currency,
    { JsonMap? properties }
  ) {
    getMethod("reportPurchaseSuccess")
        .putArg("order", order)
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