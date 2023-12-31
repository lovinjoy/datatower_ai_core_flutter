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
  if (exception is DtAnalyticsFlutterError) {
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
class DtAnalyticsFlutterError (
  val code: String,
  override val message: String? = null,
  val details: Any? = null
) : Throwable()

/** Generated interface from Pigeon that represents a handler of messages from Flutter. */
interface DTAnalyticsPigeon {
  fun trackEvent(eventName: String, properties: Map<String, Any>)
  fun userSet(properties: Map<String, Any>)
  fun userSetOnce(properties: Map<String, Any>)
  fun userAdd(properties: Map<String, Any>)
  fun userUnset(properties: List<String>)
  fun userDelete()
  fun userAppend(properties: Map<String, Any>)
  fun userUniqAppend(properties: Map<String, Any>)
  fun getDataTowerId(callback: (Result<String?>) -> Unit)
  fun setAccountId(id: String?)
  fun setFirebaseAppInstanceId(id: String?)
  fun setAppsFlyerId(id: String?)
  fun setKochavaId(id: String?)
  fun setAdjustId(id: String?)
  fun enableThirdPartySharing(type: Long)

  companion object {
    /** The codec used by DTAnalyticsPigeon. */
    val codec: MessageCodec<Any?> by lazy {
      StandardMessageCodec()
    }
    /** Sets up an instance of `DTAnalyticsPigeon` to handle messages through the `binaryMessenger`. */
    @Suppress("UNCHECKED_CAST")
    fun setUp(binaryMessenger: BinaryMessenger, api: DTAnalyticsPigeon?) {
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.trackEvent", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val eventNameArg = args[0] as String
            val propertiesArg = args[1] as Map<String, Any>
            var wrapped: List<Any?>
            try {
              api.trackEvent(eventNameArg, propertiesArg)
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
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.userSet", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val propertiesArg = args[0] as Map<String, Any>
            var wrapped: List<Any?>
            try {
              api.userSet(propertiesArg)
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
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.userSetOnce", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val propertiesArg = args[0] as Map<String, Any>
            var wrapped: List<Any?>
            try {
              api.userSetOnce(propertiesArg)
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
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.userAdd", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val propertiesArg = args[0] as Map<String, Any>
            var wrapped: List<Any?>
            try {
              api.userAdd(propertiesArg)
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
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.userUnset", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val propertiesArg = args[0] as List<String>
            var wrapped: List<Any?>
            try {
              api.userUnset(propertiesArg)
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
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.userDelete", codec)
        if (api != null) {
          channel.setMessageHandler { _, reply ->
            var wrapped: List<Any?>
            try {
              api.userDelete()
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
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.userAppend", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val propertiesArg = args[0] as Map<String, Any>
            var wrapped: List<Any?>
            try {
              api.userAppend(propertiesArg)
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
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.userUniqAppend", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val propertiesArg = args[0] as Map<String, Any>
            var wrapped: List<Any?>
            try {
              api.userUniqAppend(propertiesArg)
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
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.getDataTowerId", codec)
        if (api != null) {
          channel.setMessageHandler { _, reply ->
            api.getDataTowerId() { result: Result<String?> ->
              val error = result.exceptionOrNull()
              if (error != null) {
                reply.reply(wrapError(error))
              } else {
                val data = result.getOrNull()
                reply.reply(wrapResult(data))
              }
            }
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.setAccountId", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String?
            var wrapped: List<Any?>
            try {
              api.setAccountId(idArg)
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
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.setFirebaseAppInstanceId", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String?
            var wrapped: List<Any?>
            try {
              api.setFirebaseAppInstanceId(idArg)
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
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.setAppsFlyerId", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String?
            var wrapped: List<Any?>
            try {
              api.setAppsFlyerId(idArg)
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
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.setKochavaId", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String?
            var wrapped: List<Any?>
            try {
              api.setKochavaId(idArg)
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
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.setAdjustId", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val idArg = args[0] as String?
            var wrapped: List<Any?>
            try {
              api.setAdjustId(idArg)
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
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.datatower_ai_core_flutter.DTAnalyticsPigeon.enableThirdPartySharing", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val typeArg = args[0].let { if (it is Int) it.toLong() else it as Long }
            var wrapped: List<Any?>
            try {
              api.enableThirdPartySharing(typeArg)
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
