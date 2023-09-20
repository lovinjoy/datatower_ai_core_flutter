package com.example.datatower_ai_core_flutter

import BaseDTMethodHandler
import DTMethodResult
import android.content.Context
import android.util.Log
import com.example.datatower_ai_core_flutter.handler.DTHandler
import com.example.datatower_ai_core_flutter.handler.DTAdHandler
import com.example.datatower_ai_core_flutter.handler.DTAnalyticsHandler
import com.example.datatower_ai_core_flutter.handler.DTAnalyticsUtilHandler
import com.example.datatower_ai_core_flutter.handler.DTIapHandler
import com.example.datatower_ai_core_flutter.handler.DTIasHandler

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** DatatowerAiCoreFlutterPlugin */
class DatatowerAiCoreFlutterPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel
  private lateinit var context: Context

  private val handlerMap: Map<String, BaseDTMethodHandler> = mapOf(
    "dt" to DTHandler,
    "dt_ad" to DTAdHandler,
    "dt_analytics" to DTAnalyticsHandler,
    "dt_analytics_util" to DTAnalyticsUtilHandler,
    "dt_iap" to DTIapHandler,
    "dt_ias" to DTIasHandler,
  )

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    context = flutterPluginBinding.applicationContext

    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "datatower_ai_core_flutter")
    channel.setMethodCallHandler(this)
  }

  @Suppress("UNCHECKED_CAST")
  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
      return
    }

    val args: Map<String, Any> = call.arguments as? Map<String, Any> ?: mapOf()

    val serviceName = args["#service_name"] as? String ?: ""
    val handler = handlerMap[serviceName]
    if (handler != null) {
      when (val methodResult = handler.onMethodCall(context, call, result, args)) {
        DTMethodResult.Success -> result.success(null)
        is DTMethodResult.SuccessWith<*> -> result.success(methodResult.result)
        DTMethodResult.NotImplemented -> result.notImplemented()
        is DTMethodResult.Error -> result.error(methodResult.errCode, methodResult.errMsg, null)
        else -> {}
      }
    } else {
      result.error(
        "Handler_Not_Found",
        "Cannot found handler for current call (call.method: ${call.method}, call.arguments: ${call.arguments})",
        null
      );
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
