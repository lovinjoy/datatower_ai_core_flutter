import 'package:datatower_ai_core_flutter/src/pigeon/dt.g.dart';
import 'package:datatower_ai_core_flutter/src/base/dt_api.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

@DTApi()
class DT {
  static void initSDK(
      String appId,
      String url,
      String channel,
      bool isDebug,
      int logLevel,
      { JsonMap commonProperties = const {} }
  ) {
    DTPigeon().initSDK(appId, url, channel, isDebug, logLevel, commonProperties);
  }
}