import 'package:flutter/services.dart';

abstract class BaseDTService {
  final String _serviceName;
  final MethodChannel _methodChannel;

  const BaseDTService(this._methodChannel, { required String serviceName }):
    _serviceName = serviceName;

  DTMethodCallable getMethod(String name) {
    return DTMethodCallable._(
        methodChannel: _methodChannel,
        serviceName: _serviceName,
        methodName: name
    );
  }
}

class DTMethodCallable {
  final MethodChannel _methodChannel;
  final String _serviceName;
  final String _methodName;
  final Map<String, dynamic> _arguments = {};

  DTMethodCallable._({
    required MethodChannel methodChannel,
    required String serviceName,
    required String methodName,
  }): _methodChannel = methodChannel,
      _serviceName = serviceName,
      _methodName = methodName;

  DTMethodCallable putArg(String name, dynamic value) {
    _arguments[name] = value;
    return this;
  }

  DTMethodCallable putArgIfNonNull(String name, dynamic value) {
    if (value == null) return this;
    return putArg(name, value);
  }

  Future<T?> call<T>({
    Map<String, dynamic>? extraArgs,
  }) {
    if (extraArgs != null && extraArgs.isNotEmpty) {
      _arguments.addAll(extraArgs);
    }

    _arguments["#service_name"] = _serviceName;

    return _methodChannel.invokeMethod<T>(_methodName, _arguments);
  }
}