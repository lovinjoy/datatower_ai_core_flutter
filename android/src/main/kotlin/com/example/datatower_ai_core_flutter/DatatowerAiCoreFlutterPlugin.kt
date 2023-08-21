package com.example.datatower_ai_core_flutter

import android.content.Context
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import com.roiquery.analytics.DT
import com.roiquery.analytics.DTAnalytics
import com.roiquery.analytics.OnDataTowerIdListener
import org.json.JSONObject

/** DatatowerAiCoreFlutterPlugin */
class DatatowerAiCoreFlutterPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel
  private lateinit var context: Context

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    context = flutterPluginBinding.applicationContext

    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "datatower_ai_core_flutter")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } else if (call.method == "initSDK") {
      val args = call.arguments as Map<String, Any>
      val appId = args["appId"] as String;
      val serverUrl = args["url"] as String
      val channel = "${args["channel"]}"
      val isDebug = args["isDebug"] as Boolean
      val logLevel =  args["logLevel"] as Int

      DT.initSDK(context, appId, serverUrl, channel, isDebug, logLevel)
      result.success(null)
    } 
    else if (call.method == "trackEvent") {
      val args = call.arguments as Map<String, Any>
      val eventName = args["eventName"] as String;
      val properties = args["properties"] as Map<String, Any>
      DTAnalytics.track(eventName, properties)

      result.success(null)
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
