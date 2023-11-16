package ai.datatower.core_flutter.pigeon.impl

import DTIapPigeon
import ai.datatower.iap.DTIAPReport

internal object DtIapPigeonImpl: DTIapPigeon {
    override fun reportPurchaseSuccess(
        order: String,
        sku: String,
        price: Double,
        currency: String,
        properties: Map<String, Any>?
    ) {
        DTIAPReport.reportPurchaseSuccess(order, sku, price, currency, properties?.toMutableMap())
    }
}