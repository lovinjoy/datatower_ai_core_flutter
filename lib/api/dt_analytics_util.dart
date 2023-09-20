import 'package:datatower_ai_core_flutter/util/type_util.dart';

import 'package:datatower_ai_core_flutter/src/method_channel/datatower_ai_core_flutter_platform_interface.dart';

class DTAnalyticsUtil {

  static void trackTimerStart(String eventName) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsUtilService.trackTimerStart(eventName);
  }

  static void trackTimerPause(String eventName) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsUtilService.trackTimerPause(eventName);
  }

  static void trackTimerResume(String eventName) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsUtilService.trackTimerResume(eventName);
  }

  static void trackTimerEnd(String eventName, { JsonMap? properties }) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsUtilService.trackTimerEnd(eventName, properties: properties);
  }
}
