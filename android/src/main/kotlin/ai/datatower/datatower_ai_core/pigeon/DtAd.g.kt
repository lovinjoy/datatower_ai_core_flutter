// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon


import android.util.Log
import io.flutter.plugin.common.BasicMessageChannel
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MessageCodec
import io.flutter.plugin.common.StandardMessageCodec
import java.io.ByteArrayOutputStream
import java.nio.ByteBuffer

private fun wrapResult(result: Any?): List<Any?> {
  return listOf(result)
}

private fun wrapError(exception: Throwable): List<Any?> {
  if (exception is DtAdFlutterError) {
    return listOf(
      exception.code,
      exception.message,
      exception.details
    )
  } else {
    return listOf(
      exception.javaClass.simpleName,
      exception.toString(),
      "Cause: " + exception.cause + ", Stacktrace: " + Log.getStackTraceString(exception)
    )
  }
}

/**
 * Error class for passing custom error details to Flutter via a thrown PlatformException.
 * @property code The error code.
 * @property message The error message.
 * @property details The error details. Must be a datatype supported by the api codec.
 */
class DtAdFlutterError (
  val code: String,
  override val message: String? = null,
  val details: Any? = null
) : Throwable()

enum class AdTypeDart(val raw: Int) {
  IDLE(0),
  BANNER(1),
  INTERSTITIAL(2),
  NATIVE(3),
  REWARDED(4),
  REWARDED_INTERSTITIAL(5),
  APP_OPEN(6),
  MREC(7);

  companion object {
    fun ofRaw(raw: Int): AdTypeDart? {
      return values().firstOrNull { it.raw == raw }
    }
  }
}

enum class AdMediationDart(val raw: Int) {
  IDLE(0),
  MOPUB(1),
  MAX(2),
  HISAVANA(3),
  COMBO(4),
  TOPON(5),
  TRADPLUS(6),
  TOBID(7);

  companion object {
    fun ofRaw(raw: Int): AdMediationDart? {
      return values().firstOrNull { it.raw == raw }
    }
  }
}

enum class AdPlatformDart(val raw: Int) {
  UNDISCLOSED(0),
  IDLE(1),
  ADMOB(2),
  MOPUB(3),
  ADCOLONY(4),
  APPLOVIN(5),
  CHARTBOOST(6),
  FACEBOOK(7),
  INMOBI(8),
  IRONSOURCE(9),
  PANGLE(10),
  SNAP_AUDIENCE_NETWORK(11),
  TAPJOY(12),
  UNITY_ADS(13),
  VERIZON_MEDIA(14),
  VUNGLE(15),
  ADX(16),
  COMBO(17),
  BIGO(18),
  HISAVANA(19),
  APPLOVIN_EXCHANGE(20),
  MINTEGRAL(21),
  LIFTOFF(22),
  A4G(23),
  GOOGLE_AD_MANAGER(24),
  FYBER(25),
  MAIO(26),
  CRITEO(27),
  MYTARGET(28),
  OGURY(29),
  APPNEXT(30),
  KIDOZ(31),
  SMAATO(32),
  START_IO(33),
  VERVE(34),
  LOVINJOYADS(35),
  YANDEX(36),
  REKLAMUP(37);

  companion object {
    fun ofRaw(raw: Int): AdPlatformDart? {
      return values().firstOrNull { it.raw == raw }
    }
  }
}
/** Generated interface from Pigeon that represents a handler of messages from Flutter. */
interface DTAdPigeon {
  fun reportLoadBegin(id: String, type: AdTypeDart, platform: AdPlatformDart, seq: String, properties: Map<String, Any>, mediation: AdMediationDart, mediationId: String)
  fun reportLoadEnd(id: String, type: AdTypeDart, platform: AdPlatformDart, duration: Long, result: Boolean, seq: String, errorCode: Long, errorMessage: String, properties: Map<String, Any>, mediation: AdMediationDart, mediationId: String)
  fun reportToShow(id: String, type: AdTypeDart, platform: AdPlatformDart, location: String, seq: String, properties: Map<String, Any>, entrance: String, mediation: AdMediationDart, mediationId: String)
  fun reportShow(id: String, type: AdTypeDart, platform: AdPlatformDart, location: String, seq: String, properties: Map<String, Any>, entrance: String, mediation: AdMediationDart, mediationId: String)
  fun reportShowFailed(id: String, type: AdTypeDart, platform: AdPlatformDart, location: String, seq: String, errorCode: Long, errorMessage: String, properties: Map<String, Any>, entrance: String, mediation: AdMediationDart, mediationId: String)
  fun reportClose(id: String, type: AdTypeDart, platform: AdPlatformDart, location: String, seq: String, properties: Map<String, Any>, entrance: String, mediation: AdMediationDart, mediationId: String)
  fun reportClick(id: String, type: AdTypeDart, platform: AdPlatformDart, location: String, seq: String, properties: Map<String, Any>, entrance: String, mediation: AdMediationDart, mediationId: String)
  fun reportRewarded(id: String, type: AdTypeDart, platform: AdPlatformDart, location: String, seq: String, properties: Map<String, Any>, entrance: String, mediation: AdMediationDart, mediationId: String)
  fun reportConversionByClick(id: String, type: AdTypeDart, platform: AdPlatformDart, location: String, seq: String, properties: Map<String, Any>, entrance: String, mediation: AdMediationDart, mediationId: String)
  fun reportConversionByLeftApp(id: String, type: AdTypeDart, platform: AdPlatformDart, location: String, seq: String, properties: Map<String, Any>, entrance: String, mediation: AdMediationDart, mediationId: String)
  fun reportConversionByRewarded(id: String, type: AdTypeDart, platform: AdPlatformDart, location: String, seq: String, properties: Map<String, Any>, entrance: String, mediation: AdMediationDart, mediationId: String)
  fun reportPaid(id: String, type: AdTypeDart, platform: AdPlatformDart, location: String, seq: String, value: Double, currency: String, precision: String, properties: Map<String, Any>, entrance: String, mediation: AdMediationDart, mediationId: String)
  fun reportPaidWithCountry(id: String, type: AdTypeDart, platform: AdPlatformDart, location: String, seq: String, mediation: AdMediationDart, mediationId: String, value: Double, precision: String, country: String, properties: Map<String, Any>)
  fun reportLeftApp(id: String, type: AdTypeDart, platform: AdPlatformDart, location: String, seq: String, properties: Map<String, Any>, entrance: String, mediation: AdMediationDart, mediationId: String)

  companion object {
    /** The codec used by DTAdPigeon. */
    val codec: MessageCodec<Any?> by lazy {
      StandardMessageCodec()
    }
    /** Sets up an instance of `DTAdPigeon` to handle messages through the `binaryMessenger`. */
    @Suppress("UNCHECKED_CAST")
    fun setUp(binaryMessenger: BinaryMessenger, api: DTAdPigeon?) {
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportLoadBegin", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val seqArg = args[3] as String
            val propertiesArg = args[4] as Map<String, Any>
            val mediationArg = AdMediationDart.ofRaw(args[5] as Int)!!
            val mediationIdArg = args[6] as String
            var wrapped: List<Any?>
            try {
              api.reportLoadBegin(idArg, typeArg, platformArg, seqArg, propertiesArg, mediationArg, mediationIdArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportLoadEnd", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val durationArg = args[3].let { if (it is Int) it.toLong() else it as Long }
            val resultArg = args[4] as Boolean
            val seqArg = args[5] as String
            val errorCodeArg = args[6].let { if (it is Int) it.toLong() else it as Long }
            val errorMessageArg = args[7] as String
            val propertiesArg = args[8] as Map<String, Any>
            val mediationArg = AdMediationDart.ofRaw(args[9] as Int)!!
            val mediationIdArg = args[10] as String
            var wrapped: List<Any?>
            try {
              api.reportLoadEnd(idArg, typeArg, platformArg, durationArg, resultArg, seqArg, errorCodeArg, errorMessageArg, propertiesArg, mediationArg, mediationIdArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportToShow", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val locationArg = args[3] as String
            val seqArg = args[4] as String
            val propertiesArg = args[5] as Map<String, Any>
            val entranceArg = args[6] as String
            val mediationArg = AdMediationDart.ofRaw(args[7] as Int)!!
            val mediationIdArg = args[8] as String
            var wrapped: List<Any?>
            try {
              api.reportToShow(idArg, typeArg, platformArg, locationArg, seqArg, propertiesArg, entranceArg, mediationArg, mediationIdArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportShow", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val locationArg = args[3] as String
            val seqArg = args[4] as String
            val propertiesArg = args[5] as Map<String, Any>
            val entranceArg = args[6] as String
            val mediationArg = AdMediationDart.ofRaw(args[7] as Int)!!
            val mediationIdArg = args[8] as String
            var wrapped: List<Any?>
            try {
              api.reportShow(idArg, typeArg, platformArg, locationArg, seqArg, propertiesArg, entranceArg, mediationArg, mediationIdArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportShowFailed", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val locationArg = args[3] as String
            val seqArg = args[4] as String
            val errorCodeArg = args[5].let { if (it is Int) it.toLong() else it as Long }
            val errorMessageArg = args[6] as String
            val propertiesArg = args[7] as Map<String, Any>
            val entranceArg = args[8] as String
            val mediationArg = AdMediationDart.ofRaw(args[9] as Int)!!
            val mediationIdArg = args[10] as String
            var wrapped: List<Any?>
            try {
              api.reportShowFailed(idArg, typeArg, platformArg, locationArg, seqArg, errorCodeArg, errorMessageArg, propertiesArg, entranceArg, mediationArg, mediationIdArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportClose", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val locationArg = args[3] as String
            val seqArg = args[4] as String
            val propertiesArg = args[5] as Map<String, Any>
            val entranceArg = args[6] as String
            val mediationArg = AdMediationDart.ofRaw(args[7] as Int)!!
            val mediationIdArg = args[8] as String
            var wrapped: List<Any?>
            try {
              api.reportClose(idArg, typeArg, platformArg, locationArg, seqArg, propertiesArg, entranceArg, mediationArg, mediationIdArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportClick", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val locationArg = args[3] as String
            val seqArg = args[4] as String
            val propertiesArg = args[5] as Map<String, Any>
            val entranceArg = args[6] as String
            val mediationArg = AdMediationDart.ofRaw(args[7] as Int)!!
            val mediationIdArg = args[8] as String
            var wrapped: List<Any?>
            try {
              api.reportClick(idArg, typeArg, platformArg, locationArg, seqArg, propertiesArg, entranceArg, mediationArg, mediationIdArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportRewarded", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val locationArg = args[3] as String
            val seqArg = args[4] as String
            val propertiesArg = args[5] as Map<String, Any>
            val entranceArg = args[6] as String
            val mediationArg = AdMediationDart.ofRaw(args[7] as Int)!!
            val mediationIdArg = args[8] as String
            var wrapped: List<Any?>
            try {
              api.reportRewarded(idArg, typeArg, platformArg, locationArg, seqArg, propertiesArg, entranceArg, mediationArg, mediationIdArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportConversionByClick", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val locationArg = args[3] as String
            val seqArg = args[4] as String
            val propertiesArg = args[5] as Map<String, Any>
            val entranceArg = args[6] as String
            val mediationArg = AdMediationDart.ofRaw(args[7] as Int)!!
            val mediationIdArg = args[8] as String
            var wrapped: List<Any?>
            try {
              api.reportConversionByClick(idArg, typeArg, platformArg, locationArg, seqArg, propertiesArg, entranceArg, mediationArg, mediationIdArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportConversionByLeftApp", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val locationArg = args[3] as String
            val seqArg = args[4] as String
            val propertiesArg = args[5] as Map<String, Any>
            val entranceArg = args[6] as String
            val mediationArg = AdMediationDart.ofRaw(args[7] as Int)!!
            val mediationIdArg = args[8] as String
            var wrapped: List<Any?>
            try {
              api.reportConversionByLeftApp(idArg, typeArg, platformArg, locationArg, seqArg, propertiesArg, entranceArg, mediationArg, mediationIdArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportConversionByRewarded", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val locationArg = args[3] as String
            val seqArg = args[4] as String
            val propertiesArg = args[5] as Map<String, Any>
            val entranceArg = args[6] as String
            val mediationArg = AdMediationDart.ofRaw(args[7] as Int)!!
            val mediationIdArg = args[8] as String
            var wrapped: List<Any?>
            try {
              api.reportConversionByRewarded(idArg, typeArg, platformArg, locationArg, seqArg, propertiesArg, entranceArg, mediationArg, mediationIdArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportPaid", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val locationArg = args[3] as String
            val seqArg = args[4] as String
            val valueArg = args[5] as Double
            val currencyArg = args[6] as String
            val precisionArg = args[7] as String
            val propertiesArg = args[8] as Map<String, Any>
            val entranceArg = args[9] as String
            val mediationArg = AdMediationDart.ofRaw(args[10] as Int)!!
            val mediationIdArg = args[11] as String
            var wrapped: List<Any?>
            try {
              api.reportPaid(idArg, typeArg, platformArg, locationArg, seqArg, valueArg, currencyArg, precisionArg, propertiesArg, entranceArg, mediationArg, mediationIdArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportPaidWithCountry", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val locationArg = args[3] as String
            val seqArg = args[4] as String
            val mediationArg = AdMediationDart.ofRaw(args[5] as Int)!!
            val mediationIdArg = args[6] as String
            val valueArg = args[7] as Double
            val precisionArg = args[8] as String
            val countryArg = args[9] as String
            val propertiesArg = args[10] as Map<String, Any>
            var wrapped: List<Any?>
            try {
              api.reportPaidWithCountry(idArg, typeArg, platformArg, locationArg, seqArg, mediationArg, mediationIdArg, valueArg, precisionArg, countryArg, propertiesArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportLeftApp", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String
            val typeArg = AdTypeDart.ofRaw(args[1] as Int)!!
            val platformArg = AdPlatformDart.ofRaw(args[2] as Int)!!
            val locationArg = args[3] as String
            val seqArg = args[4] as String
            val propertiesArg = args[5] as Map<String, Any>
            val entranceArg = args[6] as String
            val mediationArg = AdMediationDart.ofRaw(args[7] as Int)!!
            val mediationIdArg = args[8] as String
            var wrapped: List<Any?>
            try {
              api.reportLeftApp(idArg, typeArg, platformArg, locationArg, seqArg, propertiesArg, entranceArg, mediationArg, mediationIdArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
    }
  }
}
