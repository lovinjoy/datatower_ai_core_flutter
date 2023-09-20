package com.example.datatower_ai_core_flutter.pigeon.impl

import DTIasPigeon
import com.roiquery.ias.DTIASReport

internal object DtIasPigeonImpl: DTIasPigeon {
    override fun reportPurchaseSuccess(
        originalOrderId: String,
        orderId: String,
        sku: String,
        price: Double,
        currency: String,
        properties: Map<String, Any>?
    ) {
        DTIASReport.reportSubscribeSuccess(
            originalOrderId, orderId, sku, price, currency,
            properties?.toMutableMap()
        )
    }
}