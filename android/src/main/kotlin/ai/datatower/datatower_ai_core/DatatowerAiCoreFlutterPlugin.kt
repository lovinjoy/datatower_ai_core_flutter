package ai.datatower.datatower_ai_core

import DTPigeon
import DTAdPigeon
import DTAnalyticsPigeon
import DTAnalyticsUtilPigeon
import DTIapPigeon
import DTIasPigeon
import ai.datatower.datatower_ai_core.pigeon.impl.DtAdPigeonImpl
import ai.datatower.datatower_ai_core.pigeon.impl.DtPigeonImpl
import ai.datatower.datatower_ai_core.pigeon.impl.DtAnalyticsPigeonImpl
import ai.datatower.datatower_ai_core.pigeon.impl.DtAnalyticsUtilPigeonImpl
import ai.datatower.datatower_ai_core.pigeon.impl.DtIapPigeonImpl
import ai.datatower.datatower_ai_core.pigeon.impl.DtIasPigeonImpl

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
