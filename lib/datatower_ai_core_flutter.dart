export 'package:datatower_ai_core_flutter/datatower_ai_core_flutter.dart';
export 'package:datatower_ai_core_flutter/api/dt.dart';
export 'package:datatower_ai_core_flutter/api/dt_ad.dart';
export 'package:datatower_ai_core_flutter/api/dt_analytics.dart';
export 'package:datatower_ai_core_flutter/api/dt_analytics_util.dart';
export 'package:datatower_ai_core_flutter/api/dt_iap.dart';
export 'package:datatower_ai_core_flutter/api/dt_ias.dart';
export 'package:datatower_ai_core_flutter/src/pigeon/dt_ad.g.dart' show AdType, AdMediation, AdPlatform;

import 'package:datatower_ai_core_flutter/api/dt.dart';

class DatatowerAiCoreFlutter {
  void initSDK(
    String appId, String url, String channel, bool isDebug, int logLevel,
    {
      Map<String, dynamic> commonProperties = const {}
    }
  ) {
    DT.initSDK(appId, url, channel, isDebug, logLevel, commonProperties: commonProperties);
  }
}
