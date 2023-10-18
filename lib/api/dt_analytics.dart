import 'package:datatower_ai_core_flutter/src/pigeon/dt_analytics.g.dart';
import 'package:datatower_ai_core_flutter/src/base/dt_api.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

@DTApi()
class DTAnalytics {
  static final DTAnalyticsPigeon _pigeon = DTAnalyticsPigeon();

  /// 调用 track 接口，追踪一个带有属性的事件
  ///
  /// - [eventName] 事件的名称
  /// - [properties] 事件属性
  static void trackEvent(String eventName, JsonMap properties) {
    _pigeon.trackEvent(eventName, properties);
  }

  /// 设置一般的用户属性
  ///
  /// - [properties] 属性
  static void userSet(JsonMap properties) {
    _pigeon.userSet(properties);
  }

  /// 设置只要设置一次的用户属性
  ///
  /// - [properties] 属性
  static void userSetOnce(JsonMap properties) {
    _pigeon.userSetOnce(properties);
  }

  /// 设置可累加的用户属性
  ///
  /// - [properties] 属性
  static void userAdd(JsonMap properties) {
    _pigeon.userAdd(properties);
  }

  /// 清空用户属性
  ///
  /// - [properties] 属性
  static void userUnset(List<String> properties) {
    _pigeon.userUnset(properties);
  }

  /// 删除用户
  static void userDelete() {
    _pigeon.userDelete();
  }

  /// 对 JSONArray 类型的用户属性进追加
  ///
  /// - [properties] 属性
  static void userAppend(JsonMap properties) {
    _pigeon.userAppend(properties);
  }

  /// 对 JSONArray 类型的用户属性进追加, 并去重
  ///
  /// - [properties] 属性
  static void userUniqAppend(JsonMap properties) {
    _pigeon.userUniqAppend(properties);
  }

  /// 获取 DataTower instance id
  static Future<String?> getDataTowerId() {
    return _pigeon.getDataTowerId();
  }

  /// 设置自有用户系统的id
  ///
  /// - [id] 用户系统id
  static void setAccountId(String? id) {
    _pigeon.setAccountId(id);
  }

  /// 设置 Firebase 的 app_instance_id
  ///
  /// - [id] Firebase 的 app_instance_id
  static void setFirebaseAppInstanceId(String? id) {
    _pigeon.setFirebaseAppInstanceId(id);
  }

  /// 设置 AppsFlyer id
  ///
  /// - [id] appsflyer id
  static void setAppsFlyerId(String? id) {
    _pigeon.setAppsFlyerId(id);
  }

  /// 设置 kochava id
  ///
  /// - [id] kochava id
  static void setKochavaId(String? id) {
    _pigeon.setKochavaId(id);
  }

  /// 设置 adjust id
  ///
  /// - [id] adjust id
  static void setAdjustId(String? id) {
    _pigeon.setAdjustId(id);
  }

  /// 透传 dt_id 至三方归因平台
  ///
  /// - [type] 归因平台 DTThirdPartyShareType.ADJUST
  static void enableThirdPartySharing(int type) {
    _pigeon.enableThirdPartySharing(type);
  }
}
