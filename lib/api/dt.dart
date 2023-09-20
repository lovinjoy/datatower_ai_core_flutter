import 'package:datatower_ai_core_flutter/src/method_channel/datatower_ai_core_flutter_platform_interface.dart';

class DT {
  static void initSDK(
      String appId,
      String url,
      int channel,
      bool isDebug,
      int logLevel,
      Map<String, dynamic> commonProperties,
  ) {
    DatatowerAiCoreFlutterPlatform.instance.dtService.initSDK(appId, url, channel, isDebug, logLevel, commonProperties);
  }
}