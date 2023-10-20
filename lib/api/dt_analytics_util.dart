import 'package:datatower_ai_core_flutter/src/pigeon/dt_analytics_util.g.dart';
import 'package:datatower_ai_core_flutter/src/base/dt_api.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

@DTApi()
class DTAnalyticsUtil {
  static final DTAnalyticsUtilPigeon _pigeon = DTAnalyticsUtilPigeon();

  /// 初始化事件的计时器，计时单位为毫秒。
  ///
  /// - [eventName] 事件的名称
  static void trackTimerStart(String eventName) {
    _pigeon.trackTimerStart(eventName);
  }

  /// 暂停事件计时器，计时单位为毫秒。
  ///
  /// - [eventName] 事件的名称
  static void trackTimerPause(String eventName) {
    _pigeon.trackTimerPause(eventName);
  }

  /// 恢复事件计时器，计时单位为毫秒。
  ///
  /// - [eventName] 事件的名称
  static void trackTimerResume(String eventName) {
    _pigeon.trackTimerResume(eventName);
  }


  /// 停止事件计时器
  ///
  /// - [eventName] 事件的名称
  /// - [properties] 事件的属性
  static void trackTimerEnd(String eventName, { JsonMap? properties }) {
    _pigeon.trackTimerEnd(eventName, properties);
  }
}
