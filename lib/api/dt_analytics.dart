import 'package:datatower_ai_core_flutter/src/pigeon/dt_analytics.g.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

class DTAnalytics {
  static final DTAnalyticsPigeon _pigeon = DTAnalyticsPigeon();

  static void trackEvent(String eventName, JsonMap properties) {
    _pigeon.trackEvent(eventName, properties);
  }

  static void userSet(JsonMap properties) {
    _pigeon.userSet(properties);
  }

  static void userSetOnce(JsonMap properties) {
    _pigeon.userSetOnce(properties);
  }

  static void userAdd(JsonMap properties) {
    _pigeon.userAdd(properties);
  }

  static void userUnset(List<String> properties) {
    _pigeon.userUnset(properties);
  }

  static void userDelete() {
    _pigeon.userDelete();
  }

  static void userAppend(JsonMap properties) {
    _pigeon.userAppend(properties);
  }

  static void userUniqAppend(JsonMap properties) {
    _pigeon.userUniqAppend(properties);
  }

  static Future<String?> getDataTowerId() {
    return _pigeon.getDataTowerId();
  }

  static void setAccountId(String? id) {
    _pigeon.setAccountId(id);
  }

  static void setFirebaseAppInstanceId(String? id) {
    _pigeon.setFirebaseAppInstanceId(id);
  }

  static void setAppsFlyerId(String? id) {
    _pigeon.setAppsFlyerId(id);
  }

  static void setKochavaId(String? id) {
    _pigeon.setKochavaId(id);
  }

  static void setAdjustId(String? id) {
    _pigeon.setAdjustId(id);
  }

  static void enableThirdPartySharing(int type) {
    _pigeon.enableThirdPartySharing(type);
  }
}
