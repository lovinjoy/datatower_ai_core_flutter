import 'package:datatower_ai_core_flutter/src/services/base_service.dart';

import 'package:datatower_ai_core_flutter/util/type_util.dart';

class DTAnalyticsService extends BaseDTService {
  DTAnalyticsService(super.methodChannel): super(serviceName: "dt_analytics");

  void trackEvent(String eventName, JsonMap properties) {
    getMethod("trackEvent")
      .putArg("eventName", eventName)
      .putArg("properties", properties)
      .call();
  }

  void userSet(JsonMap properties) {
    getMethod("userSet")
      .putArg("properties", properties)
      .call();
  }

  void userSetOnce(JsonMap properties) {
    getMethod("userSetOnce")
      .putArg("properties", properties)
      .call();
  }

  void userAdd(JsonMap properties) {
    getMethod("userAdd")
      .putArg("properties", properties)
      .call();
  }

  void userUnset(List<String> properties) {
    getMethod("userUnset")
        .putArg("properties", properties)
        .call();
  }

  void userDelete() {
    getMethod("userDelete").call();
  }

  void userAppend(JsonMap properties) {
    getMethod("userAppend")
        .putArg("properties", properties)
        .call();
  }

  void userUniqAppend(JsonMap properties) {
    getMethod("userUniqAppend")
        .putArg("properties", properties)
        .call();
  }

  Future<String?> getDataTowerId() {
    return getMethod("getDataTowerId").call();
  }

  void setAccountId(String? id) {
    getMethod("setAccountId")
        .putArg("id", id)
        .call();
  }

  void setFirebaseAppInstanceId(String? id) {
    getMethod("setFirebaseAppInstanceId")
        .putArg("id", id)
        .call();
  }

  void setAppsFlyerId(String? id) {
    getMethod("setAppsFlyerId")
        .putArg("id", id)
        .call();
  }

  void setKochavaId(String? id) {
    getMethod("setKochavaId")
        .putArg("id", id)
        .call();
  }

  void setAdjustId(String? id) {
    getMethod("setAdjustId")
        .putArg("id", id)
        .call();
  }

  void enableThirdPartySharing(int type) {
    getMethod("enableThirdPartySharing")
        .putArg("type", type)
        .call();
  }
}
