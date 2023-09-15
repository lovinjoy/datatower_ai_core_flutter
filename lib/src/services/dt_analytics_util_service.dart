import 'package:datatower_ai_core_flutter/src/services/base_service.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

class DTAnalyticsUtilService extends BaseDTService {
  DTAnalyticsUtilService(super.methodChannel): super(serviceName: "dt_analytics_util");

  void trackTimerStart(String eventName) {
    getMethod("trackTimerStart")
        .putArg("eventName", eventName)
        .call();
  }

  void trackTimerPause(String eventName) {
    getMethod("trackTimerPause")
        .putArg("eventName", eventName)
        .call();
  }

  void trackTimerResume(String eventName) {
    getMethod("trackTimerResume")
        .putArg("eventName", eventName)
        .call();
  }

  void trackTimerEnd(String eventName, { JsonMap? properties }) {
    getMethod("trackTimerEnd")
        .putArg("eventName", eventName)
        .putArg("properties", properties)
        .call();
  }
}
