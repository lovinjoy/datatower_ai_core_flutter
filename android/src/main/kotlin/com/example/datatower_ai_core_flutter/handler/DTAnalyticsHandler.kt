package com.example.datatower_ai_core_flutter.handler

import BaseDTMethodHandler
import DTMethodResult
import android.content.Context
import com.roiquery.analytics.DTAnalytics
import com.roiquery.analytics.OnDataTowerIdListener
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.json.JSONObject

internal object DTAnalyticsHandler: BaseDTMethodHandler() {
    @Suppress("UNCHECKED_CAST")
    override fun onMethodCall(
        context: Context,
        call: MethodCall,
        result: MethodChannel.Result,
        args: Map<String, Any>
    ): DTMethodResult {
        return when (call.method) {
            "trackEvent" -> {
                val eventName = args["eventName"] as String
                val properties = args["properties"] as? Map<String, Any>
                DTAnalytics.track(eventName, properties)
                DTMethodResult.Success
            }
            "userSet" -> {
                val properties = args["properties"] as? Map<String, Any>
                DTAnalytics.userSet(properties?.let { JSONObject(it) })
                DTMethodResult.Success
            }
            "userSetOnce" -> {
                val properties = args["properties"] as? Map<String, Any>
                DTAnalytics.userSetOnce(properties?.let { JSONObject(it) })
                DTMethodResult.Success
            }
            "userAdd" -> {
                val properties = args["properties"] as? Map<String, Any>
                DTAnalytics.userAdd(properties?.let { JSONObject(it) })
                DTMethodResult.Success
            }
            "userUnset" -> {
                val properties = args["properties"] as? List<String> ?: listOf()
                DTAnalytics.userUnset(*properties.toTypedArray())
                DTMethodResult.Success
            }
            "userDelete" -> {
                DTAnalytics.userDelete()
                DTMethodResult.Success
            }
            "userAppend" -> {
                val properties = args["properties"] as? Map<String, Any>
                DTAnalytics.userAppend(properties?.let { JSONObject(it) })
                DTMethodResult.Success
            }
            "userUniqAppend" -> {
                val properties = args["properties"] as? Map<String, Any>
                DTAnalytics.userUniqAppend(properties?.let { JSONObject(it) })
                DTMethodResult.Success
            }
            "getDataTowerId" -> {
                DTAnalytics.getDataTowerId(object: OnDataTowerIdListener {
                    override fun onDataTowerIdCompleted(dataTowerId: String) {
                        result.success(dataTowerId)
                    }
                })
                DTMethodResult.Ignore
            }
            "setAccountId" -> {
                DTAnalytics.setAccountId(args["id"] as? String)
                DTMethodResult.Success
            }
            "setFirebaseAppInstanceId" -> {
                DTAnalytics.setFirebaseAppInstanceId(args["id"] as? String)
                DTMethodResult.Success
            }
            "setAppsFlyerId" -> {
                DTAnalytics.setAppsFlyerId(args["id"] as? String)
                DTMethodResult.Success
            }
            "setKochavaId" -> {
                DTAnalytics.setKochavaId(args["id"] as? String)
                DTMethodResult.Success
            }
            "setAdjustId" -> {
                DTAnalytics.setAdjustId(args["id"] as? String)
                DTMethodResult.Success
            }
            "enableThirdPartySharing" -> {
                DTAnalytics.enableThirdPartySharing(args["type"] as Int)
                DTMethodResult.Success
            }
            else -> DTMethodResult.NotImplemented
        }
    }
}