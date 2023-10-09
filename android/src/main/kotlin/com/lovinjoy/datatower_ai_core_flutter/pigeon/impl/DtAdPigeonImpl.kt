package com.lovinjoy.datatower_ai_core_flutter.pigeon.impl

import AdMediationDart
import AdPlatformDart
import AdTypeDart
import DTAdPigeon
import DtAdFlutterError
import android.util.Log
import com.roiquery.ad.AdPlatform
import com.roiquery.ad.AdType
import com.roiquery.ad.AdMediation
import com.roiquery.ad.DTAdReport

internal object DtAdPigeonImpl: DTAdPigeon {
    private val adTypes by lazy { AdType.values().associateBy { it.name } }
    private fun AdTypeDart.toDtType(): AdType = adTypes[this.name] ?: AdType.IDLE

    private val adPlatforms by lazy { AdPlatform.values().associateBy { it.name } }
    private fun AdPlatformDart.toDtType(): AdPlatform = adPlatforms[this.name] ?: AdPlatform.UNDISCLOSED

    private val adMediations by lazy { AdMediation.values().associateBy { it.name } }
    private fun AdMediationDart.toDtType(): AdMediation = adMediations[this.name] ?: AdMediation.IDLE

    override fun reportLoadBegin(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        seq: String,
        properties: Map<String, Any>
    ) {
        DTAdReport.reportLoadBegin(
            id, type.toDtType(), platform.toDtType(), seq, properties.toMutableMap()
        )
    }

    override fun reportLoadEnd(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        duration: Long,
        result: Boolean,
        seq: String,
        errorCode: Long,
        errorMessage: String,
        properties: Map<String, Any>
    ) {
        DTAdReport.reportLoadEnd(
            id, type.toDtType(), platform.toDtType(), duration, result, seq,
            errorCode.toInt(), errorMessage,
            properties.toMutableMap()
        )
    }

    override fun reportToShow(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String
    ) {
        DTAdReport.reportToShow(
            id, type.toDtType(), platform.toDtType(), location, seq, properties.toMutableMap(), entrance
        )
    }

    override fun reportShow(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String
    ) {
        DTAdReport.reportShow(
            id, type.toDtType(), platform.toDtType(), location, seq, properties.toMutableMap(), entrance
        )
    }

    override fun reportShowFailed(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        errorCode: Long,
        errorMessage: String,
        properties: Map<String, Any>,
        entrance: String
    ) {
        DTAdReport.reportShowFailed(
            id, type.toDtType(), platform.toDtType(), location, seq,
            errorCode.toInt(), errorMessage,
            properties.toMutableMap(), entrance
        )
    }

    override fun reportClose(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String
    ) {
        DTAdReport.reportClose(
            id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance
        )
    }

    override fun reportClick(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String
    ) {
        DTAdReport.reportClick(
            id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance
        )
    }

    override fun reportRewarded(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String
    ) {
        DTAdReport.reportRewarded(
            id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance
        )
    }

    override fun reportConversionByClick(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String
    ) {
        DTAdReport.reportConversionByClick(
            id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance
        )
    }

    override fun reportConversionByLeftApp(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String
    ) {
        DTAdReport.reportConversionByLeftApp(
            id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance
        )
    }

    override fun reportConversionByRewarded(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String
    ) {
        DTAdReport.reportConversionByRewarded(
            id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance
        )
    }

    override fun reportPaid(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        value: String,
        currency: String,
        precision: String,
        properties: Map<String, Any>,
        entrance: String
    ) {
        DTAdReport.reportPaid(id, type.toDtType(), platform.toDtType(), location, seq,
            value, currency, precision,
            properties.toMutableMap(), entrance
        )
    }

    override fun reportPaidWithMediation(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        mediation: AdMediationDart,
        mediationId: String,
        value: String,
        precision: String,
        country: String,
        properties: Map<String, Any>
    ) {
        DTAdReport.reportPaid(id, type.toDtType(), platform.toDtType(), location, seq,
            mediation.toDtType(), mediationId, value, precision, country,
            properties.toMutableMap()
        )
    }

    override fun reportLeftApp(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String
    ) {
        DTAdReport.reportLeftApp(id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance
        )
    }

}