package com.lovinjoy.datatower_ai_core_flutter.pigeon.impl

import DTAnalyticsUtilPigeon
import com.roiquery.analytics.DTAnalyticsUtils
import org.json.JSONObject

internal object DtAnalyticsUtilPigeonImpl: DTAnalyticsUtilPigeon {
    override fun trackTimerStart(eventName: String) {
        DTAnalyticsUtils.trackTimerStart(eventName)
    }

    override fun trackTimerPause(eventName: String) {
        DTAnalyticsUtils.trackTimerPause(eventName)
    }

    override fun trackTimerResume(eventName: String) {
        DTAnalyticsUtils.trackTimerResume(eventName)
    }

    override fun trackTimerEnd(eventName: String, properties: Map<String, Any>?) {
        DTAnalyticsUtils.trackTimerEnd(
            eventName,
            properties?.let { JSONObject(it) } ?: JSONObject()
        )
    }
}