import 'package:datatower_ai_core_flutter/util/type_util.dart';

import '../bean/ad_constant.dart';
import 'package:datatower_ai_core_flutter/src/method_channel/datatower_ai_core_flutter_platform_interface.dart';

class DTAdReport {
  static void reportLoadBegin(
    String id,
    AdType type,
    AdPlatform platform,
    String seq,
    { JsonMap? properties }
  ) {
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportLoadBegin(id, type, platform, seq, properties: properties);
  }

  static void reportLoadEnd(
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
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportLoadEnd(id, type, platform, duration, result, seq,
        properties: properties, errorCode: errorCode, errorMessage: errorMessage
    );
  }

  static void reportToShow(
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
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportToShow(id, type, platform, location, seq,
        properties: properties, entrance: entrance
    );
  }

  static void reportShow(
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
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportShow(id, type, platform, location, seq,
        properties: properties, entrance: entrance
    );
  }

  static void reportShowFailed(
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
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportShowFailed(id, type, platform, location, seq, errorCode, errorMessage,
        properties: properties, entrance: entrance
    );
  }

  static void reportClose(
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
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportClose(id, type, platform, location, seq,
        properties: properties, entrance: entrance
    );
  }

  static void reportClick(
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
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportClick(id, type, platform, location, seq,
        properties: properties, entrance: entrance
    );
  }

  static void reportRewarded(
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
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportRewarded(id, type, platform, location, seq,
        properties: properties, entrance: entrance
    );
  }

  static void reportConversionByClick(
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
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportConversionByClick(id, type, platform, location, seq,
        properties: properties, entrance: entrance
    );
  }
  
  static void reportConversionByLeftApp(
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
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportConversionByLeftApp(id, type, platform, location, seq,
        properties: properties, entrance: entrance
    );
  }

  static void reportConversionByRewarded(
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
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportConversionByRewarded(id, type, platform, location, seq,
        properties: properties, entrance: entrance
    );
  }
  
  static void reportPaid(
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
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportPaid(id, type, platform, location, seq, value, currency, precision,
        properties: properties, entrance: entrance
    );
  }

  static void reportPaidWithMediation(
      String id,
      AdType type,
      AdPlatform platform,
      String location,
      String seq,
      AdMediation mediation,
      String mediationId,
      String value,
      String currency,
      String precision,
      {
        JsonMap? properties,
      }
  ) {
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportPaidWithMediation(id, type, platform, location, seq, mediation, mediationId, value, currency, precision,
        properties: properties
    );
  }

  static void reportLeftApp(
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
    DatatowerAiCoreFlutterPlatform.instance.dtAdService.reportLeftApp(id, type, platform, location, seq,
        properties: properties, entrance: entrance
    );
  }

  static Future<String?> generateUUID() {
    return DatatowerAiCoreFlutterPlatform.instance.dtAdService.generateUUID();
  }
}