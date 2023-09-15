import android.content.Context
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel.Result

internal abstract class BaseDTMethodHandler {
    abstract fun onMethodCall(
        context: Context,
        call: MethodCall,
        result: Result,
        args: Map<String, Any>
    ): DTMethodResult
}

sealed class DTMethodResult {
    class SuccessWith<T>(val result: T): DTMethodResult()
    object Success: DTMethodResult()
    object NotImplemented: DTMethodResult()
    class Error(val errCode: String, val errMsg: String): DTMethodResult()
    object Ignore: DTMethodResult()
}