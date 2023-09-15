package com.example.datatower_ai_core_flutter.handler

import BaseDTMethodHandler
import DTMethodResult
import android.content.Context
import com.roiquery.ias.DTIASReport

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel.Result

internal object DTIasHandler: BaseDTMethodHandler() {
    override fun onMethodCall(
        context: Context,
        call: MethodCall,
        result: Result,
        args: Map<String, Any>
    ): DTMethodResult {
        return when (call.method) {
            "reportPurchaseSuccess" -> {
                val originalOrderId = args["originalOrderId"] as String;
                val orderId = args["orderId"] as String
                val sku = args["sku"] as String
                val price = args["price"] as Double
                val currency = args["currency"] as String
                val properties =  args["properties"] as? MutableMap<String, Any>
                DTIASReport.reportSubscribeSuccess(
                    originalOrderId = originalOrderId,
                    orderId = orderId,
                    sku = sku,
                    price = price,
                    currency = currency,
                    properties = properties
                );
                DTMethodResult.Success
            }
            "generateUUID" -> DTMethodResult.SuccessWith(DTIASReport.generateUUID());
            else -> DTMethodResult.NotImplemented
        }
    }
}