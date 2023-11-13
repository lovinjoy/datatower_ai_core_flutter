export 'package:datatower_ai_core/datatower_ai_core.dart';
export 'package:datatower_ai_core/api/dt.dart';
export 'package:datatower_ai_core/api/dt_ad.dart';
export 'package:datatower_ai_core/api/dt_analytics.dart';
export 'package:datatower_ai_core/api/dt_analytics_util.dart';
export 'package:datatower_ai_core/src/pigeon/dt.g.dart' show DTLogLevel;
export 'package:datatower_ai_core/src/pigeon/dt_ad.g.dart'
    show AdTypeDart, AdMediationDart, AdPlatformDart;

import 'package:datatower_ai_core/api/dt.dart';
import 'package:datatower_ai_core/src/pigeon/dt.g.dart';

@Deprecated(
    "This class will be removed at later version, see member functions below for migration details.")
class DatatowerAiCoreFlutter {
  /// <s>初始化入口</s>
  ///
  /// **已废弃，请使用 DT.initSDK() 替代**
  ///
  /// - [appId] 应用id，后台分配
  /// - [url] 服务器地址,后台分配
  /// - [channel] 渠道，默认为空字符串，可用 ROIQueryChannel.GP，具体联系商务
  /// - [isDebug] 是否打开调试，调试模式下将打印log,默认关闭
  /// - [logLevel] log 的级别，默认为 Log.VERBOSE，仅在 isDebug = true 有效
  @Deprecated(
      "This entry will be removed at later version, please use `DT.initSDK()` instead.")
  void initSDK(
      String appId, String url, String channel, bool isDebug, int logLevel) {
    DT.initSDK(appId, url,
        channel: channel,
        isDebug: isDebug,
        logLevel: DTLogLevel.values[(logLevel - 2).clamp(0, 5)]);
  }
}
