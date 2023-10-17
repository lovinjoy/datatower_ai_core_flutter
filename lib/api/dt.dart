import 'dart:io';

import 'package:datatower_ai_core_flutter/src/pigeon/dt.g.dart';
import 'package:datatower_ai_core_flutter/src/base/dt_api.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

@DTApi()
class DT {
  static const _versionName = "2.0.0-beta1";

  static void initSDK(
      String appId,
      String url,
      String channel,
      bool isDebug,
      int logLevel,
      { JsonMap commonProperties = const {} }
  ) {
    var typeSuffix = "";
    if (Platform.isIOS) {
      typeSuffix = "-iOS";
    } else if (Platform.isAndroid) {
      typeSuffix = "-Android";
    }

    DTPigeon().initSDK(appId, url, channel, isDebug, logLevel, {
      ...commonProperties,
      "#sdk_type": "Flutter$typeSuffix",
      "#sdk_version_name": _versionName,
    });
  }
}