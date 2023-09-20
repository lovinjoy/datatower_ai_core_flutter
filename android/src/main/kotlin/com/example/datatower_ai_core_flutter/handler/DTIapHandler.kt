package com.example.datatower_ai_core_flutter.handler

import BaseDTMethodHandler
import DTMethodResult
import android.content.Context
import com.roiquery.iap.DTIAPReport

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel.Result

internal object DTIapHandler: BaseDTMethodHandler() {
    override fun onMethodCall(
        context: Context,
        call: MethodCall,
        result: Result,
        args: Map<String, Any>
    ): DTMethodResult {
        return when (call.method) {
            "reportPurchaseSuccess" -> {
                val order = args["order"] as String;
                val sku = args["sku"] as String
                val price = args["price"] as Double
                val currency = args["currency"] as String
                val properties =  args["properties"] as? MutableMap<String, Any>
                DTIAPReport.reportPurchaseSuccess(
                    order = order,
                    sku = sku,
                    price = price,
                    currency = currency,
                    properties = properties
                );
                DTMethodResult.Success
            }
            "generateUUID" -> DTMethodResult.SuccessWith(DTIAPReport.generateUUID());
            else -> DTMethodResult.NotImplemented
        }
    }
}