import 'package:datatower_ai_core_flutter/src/pigeon/dt.g.dart';

class DT {
  static void initSDK(
      String appId,
      String url,
      String channel,
      bool isDebug,
      int logLevel,
      { Map<String, dynamic> commonProperties = const {} }
  ) {
    DTPigeon().initSDK(appId, url, channel, isDebug, logLevel, commonProperties);
  }
}