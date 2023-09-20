package com.example.datatower_ai_core_flutter.pigeon.impl

import DTIapPigeon
import com.roiquery.iap.DTIAPReport

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