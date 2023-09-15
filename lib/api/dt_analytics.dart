import 'package:datatower_ai_core_flutter/src/method_channel/datatower_ai_core_flutter_platform_interface.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

class DTAnalytics {
  static void trackEvent(String eventName, JsonMap properties) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.trackEvent(eventName, properties);
  }

  static void userSet(JsonMap properties) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.userSet(properties);
  }

  static void userSetOnce(JsonMap properties) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.userSetOnce(properties);
  }

  static void userAdd(JsonMap properties) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.userAdd(properties);
  }

  static void userUnset(List<String> properties) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.userUnset(properties);
  }

  static void userDelete() {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.userDelete();
  }

  static void userAppend(JsonMap properties) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.userAppend(properties);
  }

  static void userUniqAppend(JsonMap properties) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.userUniqAppend(properties);
  }

  Future<String?> getDataTowerId() {
    return DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.getDataTowerId();
  }

  static void setAccountId(String? id) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.setAccountId(id);
  }

  static void setFirebaseAppInstanceId(String? id) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.setFirebaseAppInstanceId(id);
  }

  static void setAppsFlyerId(String? id) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.setAppsFlyerId(id);
  }

  static void setKochavaId(String? id) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.setKochavaId(id);
  }

  static void setAdjustId(String? id) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.setAdjustId(id);
  }

  static void enableThirdPartySharing(int type) {
    DatatowerAiCoreFlutterPlatform.instance.dtAnalyticsService.enableThirdPartySharing(type);
  }
}
