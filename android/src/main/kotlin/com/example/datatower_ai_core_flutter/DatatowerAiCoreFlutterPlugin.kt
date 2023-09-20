package com.example.datatower_ai_core_flutter

import BaseDTMethodHandler
import DTPigeon
import com.example.datatower_ai_core_flutter.handler.DTHandler
import com.example.datatower_ai_core_flutter.handler.DTAdHandler
import com.example.datatower_ai_core_flutter.handler.DTAnalyticsHandler
import com.example.datatower_ai_core_flutter.handler.DTAnalyticsUtilHandler
import com.example.datatower_ai_core_flutter.handler.DTIapHandler
import com.example.datatower_ai_core_flutter.handler.DTIasHandler
import com.example.datatower_ai_core_flutter.pigeon.DTPigeonImpl

import io.flutter.embedding.engine.plugins.FlutterPlugin

/** DatatowerAiCoreFlutterPlugin */
class DatatowerAiCoreFlutterPlugin: FlutterPlugin {

  private val handlerMap: Map<String, BaseDTMethodHandler> = mapOf(
    "dt" to DTHandler,
    "dt_ad" to DTAdHandler,
    "dt_analytics" to DTAnalyticsHandler,
    "dt_analytics_util" to DTAnalyticsUtilHandler,
    "dt_iap" to DTIapHandler,
    "dt_ias" to DTIasHandler,
  )

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    registerPigeons(flutterPluginBinding)
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {}

  private fun registerPigeons(binding: FlutterPlugin.FlutterPluginBinding) {
    DTPigeon.setUp(binding.binaryMessenger, DTPigeonImpl(binding.applicationContext))
  }
}
