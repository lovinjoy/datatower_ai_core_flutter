package com.example.datatower_ai_core_flutter.handler

import BaseDTMethodHandler
import DTMethodResult
import android.content.Context
import com.roiquery.analytics.DT

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel.Result
import org.json.JSONObject

internal object DTHandler: BaseDTMethodHandler() {
    override fun onMethodCall(
        context: Context,
        call: MethodCall,
        result: Result,
        args: Map<String, Any>
    ): DTMethodResult {
        return when (call.method) {
            "initSDK" -> {
                val appId = args["appId"] as String;
                val serverUrl = args["url"] as String
                val channel = "${args["channel"]}"
                val isDebug = args["isDebug"] as Boolean
                val logLevel =  args["logLevel"] as Int
                val properties =  args["commonProperties"] as Map<*, *>
                DT.initSDK(
                    context = context,
                    appId = appId,
                    serverUrl = serverUrl,
                    channel = channel,
                    isDebug = isDebug,
                    logLevel = logLevel,
                    commonProperties = JSONObject(properties)
                );
                DTMethodResult.Success
            }
            else -> DTMethodResult.NotImplemented
        }
    }
}