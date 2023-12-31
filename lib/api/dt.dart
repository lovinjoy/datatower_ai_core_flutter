import 'dart:io';

import 'package:datatower_ai_core_flutter/src/pigeon/dt.g.dart';
import 'package:datatower_ai_core_flutter/src/base/dt_api.dart';

@DTApi()
class DT {
  /// Version name, should be equal to 'version' in pubspec.yaml
  static const _versionName = "2.1.0";

  /// 初始化入口
  ///
  /// - [appId] 应用id，后台分配
  /// - [url] 服务器地址,后台分配
  /// - [channel] 渠道，默认为空字符串，可用 ROIQueryChannel.GP，具体联系商务
  /// - [isDebug] 是否打开调试，调试模式下将打印log, 默认关闭
  /// - [logLevel] log 的级别，默认为 2 (Log.VERBOSE)，仅在 isDebug = true 有效
  static Future<void> initSDK(String appId, String url,
      {String channel = "",
      bool isDebug = false,
      DTLogLevel logLevel = DTLogLevel.DEBUG}) {
    var typeSuffix = "";
    if (Platform.isIOS) {
      typeSuffix = "-iOS";
    } else if (Platform.isAndroid) {
      typeSuffix = "-Android";
    } else {
      // Unsupported platforms
      typeSuffix = "-${Platform.operatingSystem}";
    }

    return DTPigeon().initSDK(appId, url, channel, isDebug, logLevel, {
      "#sdk_type": "Flutter$typeSuffix",
      "#sdk_version_name": _versionName,
    });
  }
}
