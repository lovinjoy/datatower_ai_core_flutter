package com.lovinjoy.datatower_ai_core_flutter.pigeon.impl
import DTPigeon
import DTLogLevel

import android.content.Context
import android.util.Log
import com.roiquery.analytics.DT
import org.json.JSONObject

internal class DtPigeonImpl(private val context: Context): DTPigeon {
    override fun initSDK(
        appId: String,
        url: String,
        channel: String,
        isDebug: Boolean,
        logLevel: DTLogLevel,
        commonProperties: Map<String, Any>
    ) {
        DT.initSDK(
            context,
            appId,
            url,
            channel,
            isDebug,
            when (logLevel) {
                DTLogLevel.DEBUG -> Log.DEBUG
                DTLogLevel.INFO -> Log.INFO
                DTLogLevel.WARN -> Log.WARN
                DTLogLevel.ERROR -> Log.ERROR
                else -> Log.DEBUG
            },
            JSONObject(commonProperties)
        )
    }
}