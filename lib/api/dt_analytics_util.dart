import 'package:datatower_ai_core_flutter/src/pigeon/dt_analytics_util.g.dart';
import 'package:datatower_ai_core_flutter/src/base/dt_api.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

@DTApi()
class DTAnalyticsUtil {
  static final DTAnalyticsUtilPigeon _pigeon = DTAnalyticsUtilPigeon();

  static void trackTimerStart(String eventName) {
    _pigeon.trackTimerStart(eventName);
  }

  static void trackTimerPause(String eventName) {
    _pigeon.trackTimerPause(eventName);
  }

  static void trackTimerResume(String eventName) {
    _pigeon.trackTimerResume(eventName);
  }

  static void trackTimerEnd(String eventName, { JsonMap? properties }) {
    _pigeon.trackTimerEnd(eventName, properties);
  }
}
