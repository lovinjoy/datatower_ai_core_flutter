package com.example.datatower_ai_core_flutter.handler

import BaseDTMethodHandler
import DTMethodResult
import android.content.Context
import com.roiquery.ad.AdMediation
import com.roiquery.ad.AdPlatform
import com.roiquery.ad.AdType
import com.roiquery.ad.DTAdReport
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import java.lang.IllegalArgumentException

internal object DTAdHandler: BaseDTMethodHandler() {
    private val adTypeMap: Map<Int, AdType> by lazy {
        AdType.values().associateBy { adType -> adType.value }
    }

    private val adPlatformMap: Map<Int, AdPlatform> by lazy {
        AdPlatform.values().associateBy { adp -> adp.value }
    }

    private val adMediationMap: Map<Int, AdMediation> by lazy {
        AdMediation.values().associateBy { adm -> adm.value }
    }

    @Suppress("UNCHECKED_CAST")
    override fun onMethodCall(
        context: Context,
        call: MethodCall,
        result: MethodChannel.Result,
        args: Map<String, Any>
    ): DTMethodResult {
        return when (call.method) {
            "reportLoadBegin" -> {
                DTAdReport.reportLoadBegin(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    seq = args["seq"] as String,
                    properties = args["properties"] as? MutableMap<String, Any>
                )
                DTMethodResult.Success
            }
            "reportLoadEnd" -> {
                DTAdReport.reportLoadEnd(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    duration = args["duration"] as Long,
                    result = args["result"] as Boolean,
                    seq = args["seq"] as String,
                    errorCode = args["errorCode"] as? Int ?: 0,
                    errorMessage = args["errorMessage"] as? String ?: "",
                    properties = args["properties"] as? MutableMap<String, Any>
                )
                DTMethodResult.Success
            }
            "reportToShow" -> {
                DTAdReport.reportToShow(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    location = args["location"] as String,
                    seq = args["seq"] as String,
                    properties = args["properties"] as? MutableMap<String, Any>,
                    entrance = args["entrance"] as? String
                )
                DTMethodResult.Success
            }
            "reportShow" -> {
                DTAdReport.reportShow(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    location = args["location"] as String,
                    seq = args["seq"] as String,
                    properties = args["properties"] as? MutableMap<String, Any>,
                    entrance = args["entrance"] as? String
                )
                DTMethodResult.Success
            }
            "reportShowFailed" -> {
                DTAdReport.reportShowFailed(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    location = args["location"] as String,
                    seq = args["seq"] as String,
                    errorCode = args["errorCode"] as Int,
                    errorMessage = args["errorMessage"] as String,
                    properties = args["properties"] as? MutableMap<String, Any>,
                    entrance = args["entrance"] as? String
                )
                DTMethodResult.Success
            }
            "reportClose" -> {
                DTAdReport.reportClose(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    location = args["location"] as String,
                    seq = args["seq"] as String,
                    properties = args["properties"] as? MutableMap<String, Any>,
                    entrance = args["entrance"] as? String
                )
                DTMethodResult.Success
            }
            "reportClick" -> {
                DTAdReport.reportClick(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    location = args["location"] as String,
                    seq = args["seq"] as String,
                    properties = args["properties"] as? MutableMap<String, Any>,
                    entrance = args["entrance"] as? String
                )
                DTMethodResult.Success
            }
            "reportRewarded" -> {
                DTAdReport.reportRewarded(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    location = args["location"] as String,
                    seq = args["seq"] as String,
                    properties = args["properties"] as? MutableMap<String, Any>,
                    entrance = args["entrance"] as? String
                )
                DTMethodResult.Success
            }
            "reportConversionByClick" -> {
                DTAdReport.reportConversionByClick(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    location = args["location"] as String,
                    seq = args["seq"] as String,
                    properties = args["properties"] as? MutableMap<String, Any>,
                    entrance = args["entrance"] as? String
                )
                DTMethodResult.Success
            }
            "reportConversionByLeftApp" -> {
                DTAdReport.reportConversionByLeftApp(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    location = args["location"] as String,
                    seq = args["seq"] as String,
                    properties = args["properties"] as? MutableMap<String, Any>,
                    entrance = args["entrance"] as? String
                )
                DTMethodResult.Success
            }
            "reportConversionByRewarded" -> {
                DTAdReport.reportConversionByRewarded(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    location = args["location"] as String,
                    seq = args["seq"] as String,
                    properties = args["properties"] as? MutableMap<String, Any>,
                    entrance = args["entrance"] as? String
                )
                DTMethodResult.Success
            }
            "reportPaid" -> {
                DTAdReport.reportPaid(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    location = args["location"] as String,
                    seq = args["seq"] as String,
                    value = args["value"] as String,
                    currency = args["currency"] as String,
                    precision = args["precision"] as String,
                    properties = args["properties"] as? MutableMap<String, Any>,
                    entrance = args["entrance"] as? String
                )
                DTMethodResult.Success
            }
            "reportPaidWithMediation" -> {
                DTAdReport.reportPaid(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    location = args["location"] as String,
                    seq = args["seq"] as String,
                    mediation = adMediationMap[args["mediation"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    mediationId = args["mediationId"] as String,
                    value = args["value"] as String,
                    precision = args["precision"] as String,
                    country = args["country"] as String,
                    properties = args["properties"] as? MutableMap<String, Any>,
                )
                DTMethodResult.Success
            }
            "reportLeftApp" -> {
                DTAdReport.reportLeftApp(
                    id = args["id"] as String,
                    type = adTypeMap[args["type"] as Int] ?:
                        throw IllegalArgumentException("Given type (${args["type"]}) is not valid"),
                    platform = adPlatformMap[args["platform"] as Int] ?:
                        throw IllegalArgumentException("Given platform (${args["platform"]}) is not valid"),
                    location = args["location"] as String,
                    seq = args["seq"] as String,
                    properties = args["properties"] as? MutableMap<String, Any>,
                    entrance = args["entrance"] as? String
                )
                DTMethodResult.Success
            }
            "generateUUID" -> DTMethodResult.SuccessWith(DTAdReport.generateUUID());
            else -> DTMethodResult.NotImplemented
        }
    }
}