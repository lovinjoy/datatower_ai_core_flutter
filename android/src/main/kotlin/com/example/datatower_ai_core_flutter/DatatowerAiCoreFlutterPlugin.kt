package com.example.datatower_ai_core_flutter

import DTPigeon
import DTAdPigeon
import DTAnalyticsPigeon
import DTAnalyticsUtilPigeon
import DTIapPigeon
import DTIasPigeon
import com.example.datatower_ai_core_flutter.pigeon.impl.DtAdPigeonImpl
import com.example.datatower_ai_core_flutter.pigeon.impl.DtPigeonImpl
import com.example.datatower_ai_core_flutter.pigeon.impl.DtAnalyticsPigeonImpl
import com.example.datatower_ai_core_flutter.pigeon.impl.DtAnalyticsUtilPigeonImpl
import com.example.datatower_ai_core_flutter.pigeon.impl.DtIapPigeonImpl
import com.example.datatower_ai_core_flutter.pigeon.impl.DtIasPigeonImpl

import io.flutter.embedding.engine.plugins.FlutterPlugin

/** DatatowerAiCoreFlutterPlugin */
class DatatowerAiCoreFlutterPlugin: FlutterPlugin {
  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    registerPigeons(flutterPluginBinding)
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {}

  private fun registerPigeons(binding: FlutterPlugin.FlutterPluginBinding) {
    DTPigeon.setUp(binding.binaryMessenger, DtPigeonImpl(binding.applicationContext))
    DTAdPigeon.setUp(binding.binaryMessenger, DtAdPigeonImpl)
    DTAnalyticsPigeon.setUp(binding.binaryMessenger, DtAnalyticsPigeonImpl)
    DTAnalyticsUtilPigeon.setUp(binding.binaryMessenger, DtAnalyticsUtilPigeonImpl)
    DTIapPigeon.setUp(binding.binaryMessenger, DtIapPigeonImpl)
    DTIasPigeon.setUp(binding.binaryMessenger, DtIasPigeonImpl)
  }
}
