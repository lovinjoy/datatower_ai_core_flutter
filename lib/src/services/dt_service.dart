import 'package:datatower_ai_core_flutter/src/services/base_service.dart';

class DTService extends BaseDTService {
  DTService(super.methodChannel): super(serviceName: "dt");

  void initSDK(
      String appId,
      String url,
      int channel,
      bool isDebug,
      int logLevel,
      Map<String, dynamic> commonProperties,
  ) {
    getMethod("initSDK")
        .putArg("appId", appId)
        .putArg("url", url)
        .putArg("channel", channel)
        .putArg("isDebug", isDebug)
        .putArg("logLevel", logLevel)
        .putArg("commonProperties", commonProperties)
        .call();
  }
}