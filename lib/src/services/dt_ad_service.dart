import 'package:datatower_ai_core_flutter/bean/ad_constant.dart';
import 'package:datatower_ai_core_flutter/src/services/base_service.dart';
import 'package:datatower_ai_core_flutter/util/type_util.dart';

class DTAdService extends BaseDTService {
  DTAdService(super.methodChannel): super(serviceName: "dt_ad");

  void reportLoadBegin(
    String id,
    AdType type,
    AdPlatform platform,
    String seq,
    { JsonMap? properties }
  ) {
    getMethod("reportLoadBegin")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("seq", seq)
        .putArg("properties", properties)
        .call();
  }

  void reportLoadEnd(
    String id,
    AdType type,
    AdPlatform platform,
    int duration,
    bool result,
    String seq,
    {
      int errorCode = 0,
      String errorMessage = "",
      JsonMap? properties
    }
  ) {
    getMethod("reportLoadBegin")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("duration", duration)
        .putArg("result", result)
        .putArg("seq", seq)
        .putArg("errorCode", errorCode)
        .putArg("errorMessage", errorMessage)
        .putArg("properties", properties)
        .call();
  }

  void reportToShow(
    String id,
    AdType type,
    AdPlatform platform,
    String location,
    String seq,
    {
      JsonMap? properties,
      String? entrance
    }
  ) {
    getMethod("reportLoadBegin")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("location", location)
        .putArg("seq", seq)
        .putArg("properties", properties)
        .putArg("entrance", entrance)
        .call();
  }

  void reportShow(
      String id,
      AdType type,
      AdPlatform platform,
      String location,
      String seq,
      {
        JsonMap? properties,
        String? entrance
      }
  ) {
    getMethod("reportShow")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("location", location)
        .putArg("seq", seq)
        .putArg("properties", properties)
        .putArg("entrance", entrance)
        .call();
  }

  void reportShowFailed(
      String id,
      AdType type,
      AdPlatform platform,
      String location,
      String seq,
      int errorCode,
      String errorMessage,
      {
        JsonMap? properties,
        String? entrance
      }
  ) {
    getMethod("reportShowFailed")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("location", location)
        .putArg("seq", seq)
        .putArg("errorCode", errorCode)
        .putArg("errorMessage", errorMessage)
        .putArg("properties", properties)
        .putArg("entrance", entrance)
        .call();
  }

  void reportClose(
      String id,
      AdType type,
      AdPlatform platform,
      String location,
      String seq,
      {
        JsonMap? properties,
        String? entrance
      }
  ) {
    getMethod("reportClose")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("location", location)
        .putArg("seq", seq)
        .putArg("properties", properties)
        .putArg("entrance", entrance)
        .call();
  }

  void reportClick(
      String id,
      AdType type,
      AdPlatform platform,
      String location,
      String seq,
      {
        JsonMap? properties,
        String? entrance
      }
  ) {
    getMethod("reportClick")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("location", location)
        .putArg("seq", seq)
        .putArg("properties", properties)
        .putArg("entrance", entrance)
        .call();
  }

  void reportRewarded(
      String id,
      AdType type,
      AdPlatform platform,
      String location,
      String seq,
      {
        JsonMap? properties,
        String? entrance
      }
  ) {
    getMethod("reportRewarded")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("location", location)
        .putArg("seq", seq)
        .putArg("properties", properties)
        .putArg("entrance", entrance)
        .call();
  }

  void reportConversionByClick(
      String id,
      AdType type,
      AdPlatform platform,
      String location,
      String seq,
      {
        JsonMap? properties,
        String? entrance
      }
  ) {
    getMethod("reportConversionByClick")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("location", location)
        .putArg("seq", seq)
        .putArg("properties", properties)
        .putArg("entrance", entrance)
        .call();
  }
  
  void reportConversionByLeftApp(
      String id,
      AdType type,
      AdPlatform platform,
      String location,
      String seq,
      {
        JsonMap? properties,
        String? entrance
      }
  ) {
    getMethod("reportConversionByLeftApp")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("location", location)
        .putArg("seq", seq)
        .putArg("properties", properties)
        .putArg("entrance", entrance)
        .call();
  }

  void reportConversionByRewarded(
      String id,
      AdType type,
      AdPlatform platform,
      String location,
      String seq,
      {
        JsonMap? properties,
        String? entrance
      }
  ) {
    getMethod("reportConversionByRewarded")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("location", location)
        .putArg("seq", seq)
        .putArg("properties", properties)
        .putArg("entrance", entrance)
        .call();
  }
  
  void reportPaid(
    String id,
    AdType type,
    AdPlatform platform,
    String location,
    String seq,
    String value,
    String currency,
    String precision,
    {
      JsonMap? properties,
      String? entrance
    }
  ) {
    getMethod("reportPaid")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("location", location)
        .putArg("seq", seq)
        .putArg("value", value)
        .putArg("currency", currency)
        .putArg("precision", precision)
        .putArg("properties", properties)
        .putArg("entrance", entrance)
        .call();
  }

  void reportPaidWithMediation(
      String id,
      AdType type,
      AdPlatform platform,
      String location,
      String seq,
      AdMediation mediation,
      String mediationId,
      String value,
      String precision,
      String country,
      {
        JsonMap? properties,
      }
      ) {
    getMethod("reportPaidWithMediation")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("location", location)
        .putArg("seq", seq)
        .putArg("mediation", mediation.value)
        .putArg("mediationId", mediationId)
        .putArg("value", value)
        .putArg("precision", precision)
        .putArg("country", country)
        .putArg("properties", properties)
        .call();
  }

  void reportLeftApp(
      String id,
      AdType type,
      AdPlatform platform,
      String location,
      String seq,
      {
        JsonMap? properties,
        String? entrance
      }
  ) {
    getMethod("reportLeftApp")
        .putArg("id", id)
        .putArg("type", type.value)
        .putArg("platform", platform.value)
        .putArg("location", location)
        .putArg("seq", seq)
        .putArg("properties", properties)
        .putArg("entrance", entrance)
        .call();
  }

  Future<String?> generateUUID() {
    return getMethod("generateUUID").call();
  }
}