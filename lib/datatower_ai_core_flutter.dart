export 'package:datatower_ai_core_flutter/datatower_ai_core_flutter.dart';
export 'package:datatower_ai_core_flutter/api/dt.dart';
export 'package:datatower_ai_core_flutter/api/dt_ad.dart';
export 'package:datatower_ai_core_flutter/api/dt_analytics.dart';
export 'package:datatower_ai_core_flutter/api/dt_analytics_util.dart';
export 'package:datatower_ai_core_flutter/api/dt_iap.dart';
export 'package:datatower_ai_core_flutter/api/dt_ias.dart';

import 'package:datatower_ai_core_flutter/api/dt.dart';
import 'package:datatower_ai_core_flutter/src/method_channel/datatower_ai_core_flutter_platform_interface.dart';

class DatatowerAiCoreFlutter {
  Future<String?> getPlatformVersion() {
    return DatatowerAiCoreFlutterPlatform.instance.getPlatformVersion();
  }

  void initSDK(
    String appId, String url, int channel, bool isDebug, int logLevel,
    {
      Map<String, dynamic> commonProperties = const {}
    }
  ) {
    DT.initSDK(appId, url, channel, isDebug, logLevel, commonProperties: commonProperties);
  }
}
