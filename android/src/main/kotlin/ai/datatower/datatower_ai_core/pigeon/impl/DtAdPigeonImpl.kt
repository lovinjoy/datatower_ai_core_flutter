package ai.datatower.datatower_ai_core.pigeon.impl

import AdMediationDart
import AdPlatformDart
import AdTypeDart
import DTAdPigeon
import DtAdFlutterError
import android.util.Log
import ai.datatower.ad.AdPlatform
import ai.datatower.ad.AdType
import ai.datatower.ad.AdMediation
import ai.datatower.ad.DTAdReport

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
        properties: Map<String, Any>,
        mediation: AdMediationDart,
        mediationId: String
    ) {
        DTAdReport.reportLoadBegin(
            id, type.toDtType(), platform.toDtType(), seq, properties.toMutableMap(),
            mediation = mediation.toDtType(), mediationId = mediationId
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
        properties: Map<String, Any>,
        mediation: AdMediationDart,
        mediationId: String
    ) {
        DTAdReport.reportLoadEnd(
            id, type.toDtType(), platform.toDtType(), duration, result, seq,
            errorCode.toInt(), errorMessage,
            properties.toMutableMap(),
            mediation = mediation.toDtType(), mediationId = mediationId
        )
    }

    override fun reportToShow(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String,
        mediation: AdMediationDart,
        mediationId: String
    ) {
        DTAdReport.reportToShow(
            id, type.toDtType(), platform.toDtType(), location, seq, properties.toMutableMap(), entrance,
            mediation = mediation.toDtType(), mediationId = mediationId
        )
    }

    override fun reportShow(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String,
        mediation: AdMediationDart,
        mediationId: String
    ) {
        DTAdReport.reportShow(
            id, type.toDtType(), platform.toDtType(), location, seq, properties.toMutableMap(), entrance,
            mediation = mediation.toDtType(), mediationId = mediationId
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
        entrance: String,
        mediation: AdMediationDart,
        mediationId: String
    ) {
        DTAdReport.reportShowFailed(
            id, type.toDtType(), platform.toDtType(), location, seq,
            errorCode.toInt(), errorMessage,
            properties.toMutableMap(), entrance,
            mediation = mediation.toDtType(), mediationId = mediationId
        )
    }

    override fun reportClose(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String,
        mediation: AdMediationDart,
        mediationId: String
    ) {
        DTAdReport.reportClose(
            id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance,
            mediation = mediation.toDtType(), mediationId = mediationId
        )
    }

    override fun reportClick(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String,
        mediation: AdMediationDart,
        mediationId: String
    ) {
        DTAdReport.reportClick(
            id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance,
            mediation = mediation.toDtType(), mediationId = mediationId
        )
    }

    override fun reportRewarded(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String,
        mediation: AdMediationDart,
        mediationId: String
    ) {
        DTAdReport.reportRewarded(
            id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance,
            mediation = mediation.toDtType(), mediationId = mediationId
        )
    }

    override fun reportConversionByClick(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String,
        mediation: AdMediationDart,
        mediationId: String
    ) {
        DTAdReport.reportConversionByClick(
            id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance,
            mediation = mediation.toDtType(), mediationId = mediationId
        )
    }

    override fun reportConversionByLeftApp(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String,
        mediation: AdMediationDart,
        mediationId: String
    ) {
        DTAdReport.reportConversionByLeftApp(
            id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance,
            mediation = mediation.toDtType(), mediationId = mediationId
        )
    }

    override fun reportConversionByRewarded(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        properties: Map<String, Any>,
        entrance: String,
        mediation: AdMediationDart,
        mediationId: String
    ) {
        DTAdReport.reportConversionByRewarded(
            id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance,
            mediation = mediation.toDtType(), mediationId = mediationId
        )
    }

    override fun reportPaid(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        value: Double,
        currency: String,
        precision: String,
        properties: Map<String, Any>,
        entrance: String,
        mediation: AdMediationDart,
        mediationId: String
    ) {
        DTAdReport.reportPaid(id, type.toDtType(), platform.toDtType(), location, seq,
            value, currency, precision,
            properties.toMutableMap(), entrance,
            mediation = mediation.toDtType(), mediationId = mediationId
        )
    }

    override fun reportPaidWithCountry(
        id: String,
        type: AdTypeDart,
        platform: AdPlatformDart,
        location: String,
        seq: String,
        mediation: AdMediationDart,
        mediationId: String,
        value: Double,
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
        entrance: String,
        mediation: AdMediationDart,
        mediationId: String
    ) {
        DTAdReport.reportLeftApp(id, type.toDtType(), platform.toDtType(), location, seq,
            properties.toMutableMap(), entrance,
            mediation = mediation.toDtType(), mediationId = mediationId
        )
    }

}