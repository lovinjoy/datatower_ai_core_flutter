package com.example.datatower_ai_core_flutter.pigeon

import DTPigeon
import android.content.Context
import com.roiquery.analytics.DT
import org.json.JSONObject

internal class DTPigeonImpl(private val context: Context): DTPigeon {
    override fun initSDK(
        appId: String,
        url: String,
        channel: String,
        isDebug: Boolean,
        logLevel: Long,
        commonProperties: Map<String, Any>
    ) {
        DT.initSDK(
            context,
            appId,
            url,
            channel,
            isDebug,
            logLevel.toInt(),
            JSONObject(commonProperties)
        )
    }

}