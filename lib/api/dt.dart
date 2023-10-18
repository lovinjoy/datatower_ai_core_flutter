import 'dart:io';

import 'package:datatower_ai_core_flutter/src/pigeon/dt.g.dart';
import 'package:datatower_ai_core_flutter/src/base/dt_api.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

@DTApi()
class DT {
  static const _versionName = "2.0.1";

  static void initSDK(
      String appId,
      String url,
      String channel,
      bool isDebug,
      int logLevel
  ) {
    var typeSuffix = "";
    if (Platform.isIOS) {
      typeSuffix = "-iOS";
    } else if (Platform.isAndroid) {
      typeSuffix = "-Android";
    }

    DTPigeon().initSDK(appId, url, channel, isDebug, logLevel, {
      "#sdk_type": "Flutter$typeSuffix",
      "#sdk_version_name": _versionName,
    });
  }
}