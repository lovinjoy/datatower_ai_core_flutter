package com.example.datatower_ai_core_flutter.handler

import BaseDTMethodHandler
import DTMethodResult
import android.content.Context
import com.roiquery.analytics.DTAnalyticsUtils
import com.roiquery.ias.DTIASReport
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

internal object DTAnalyticsUtilHandler: BaseDTMethodHandler() {
    @Suppress("UNCHECKED_CAST")
    override fun onMethodCall(
        context: Context,
        call: MethodCall,
        result: MethodChannel.Result,
        args: Map<String, Any>
    ): DTMethodResult {
        return when (call.method) {
            "trackTimerStart" -> {
                val eventName = args["eventName"] as String
                DTAnalyticsUtils.trackTimerStart(eventName);
                DTMethodResult.Success
            }
            "trackTimerPause" -> {
                val eventName = args["eventName"] as String
                DTAnalyticsUtils.trackTimerPause(eventName);
                DTMethodResult.Success
            }
            "trackTimerResume" -> {
                val eventName = args["eventName"] as String
                DTAnalyticsUtils.trackTimerResume(eventName);
                DTMethodResult.Success
            }
            "trackTimerEnd" -> {
                val eventName = args["eventName"] as String
                val properties =  args["properties"] as? Map<String, Any> ?: mapOf()
                DTAnalyticsUtils.trackTimerEnd(eventName, properties);
                DTMethodResult.Success
            }
            else -> DTMethodResult.NotImplemented
        }
    }
}