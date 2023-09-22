package com.lovinjoy.datatower_ai_core_flutter.pigeon.impl

import AdType
import AdPlatform
import AdMediation
import DTAdPigeon
import DtAdFlutterError
import com.roiquery.ad.DTAdReport

internal object DtAdPigeonImpl: DTAdPigeon {
    private val adTypeMap: Map<Int, com.roiquery.ad.AdType> by lazy {
        com.roiquery.ad.AdType.values().associateBy { adType -> adType.value }
    }
    private fun AdType.toDtType(): com.roiquery.ad.AdType = adTypeMap[this.raw] ?:
        throw DtAdFlutterError(code = "4001", message = "AdType not matches native AdType ($this, ${this.raw})")

    private val adPlatformMap: Map<Int, com.roiquery.ad.AdPlatform> by lazy {
        com.roiquery.ad.AdPlatform.values().associateBy { adp -> adp.value }
    }
    private fun AdPlatform.toDtType(): com.roiquery.ad.AdPlatform = adPlatformMap[this.raw] ?:
        throw DtAdFlutterError(code = "4002", message = "AdPlatform not matches native AdPlatform ($this, ${this.raw})")

    private val adMediationMap: Map<Int, com.roiquery.ad.AdMediation> by lazy {
        com.roiquery.ad.AdMediation.values().associateBy { adm -> adm.value }
    }
    private fun AdMediation.toDtType(): com.roiquery.ad.AdMediation = adMediationMap[this.raw] ?:
        throw DtAdFlutterError(code = "4003", message = "AdMediation not matches native AdMediation ($this, ${this.raw})")

    override fun reportLoadBegin(
        id: String,
        type: AdType,
        platform: AdPlatform,
        seq: String,
        properties: Map<String, Any>
    ) {
        DTAdReport.reportLoadBegin(
            id, type.toDtType(), platform.toDtType(), seq, properties.toMutableMap()
        )
    }

    override fun reportLoadEnd(
        id: String,
        type: AdType,
        platform: AdPlatform,
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
        type: AdType,
        platform: AdPlatform,
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
        type: AdType,
        platform: AdPlatform,
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
        type: AdType,
        platform: AdPlatform,
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
        type: AdType,
        platform: AdPlatform,
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
        type: AdType,
        platform: AdPlatform,
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
        type: AdType,
        platform: AdPlatform,
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
        type: AdType,
        platform: AdPlatform,
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
        type: AdType,
        platform: AdPlatform,
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
        type: AdType,
        platform: AdPlatform,
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
        type: AdType,
        platform: AdPlatform,
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
        type: AdType,
        platform: AdPlatform,
        location: String,
        seq: String,
        mediation: AdMediation,
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
        type: AdType,
        platform: AdPlatform,
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