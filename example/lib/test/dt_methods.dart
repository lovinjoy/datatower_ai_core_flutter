// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// DtApiMethodsGenerator
// **************************************************************************

import 'package:datatower_ai_core_flutter/api/dt.dart';
import 'package:datatower_ai_core_flutter/api/dt_ad.dart';
import 'package:datatower_ai_core_flutter/api/dt_analytics.dart';

const List<DtApiMethodHolder> dtApiMethodHolders = [
  dtApiMethods4DT,
  dtApiMethods4DTAdReport,
  dtApiMethods4DTAnalytics
];

const DtApiMethodHolder dtApiMethods4DT = DtApiMethodHolder("DT", ["initSDK"]);

const DtApiMethodHolder dtApiMethods4DTAdReport =
    DtApiMethodHolder("DTAdReport", [
  "reportLoadBegin",
  "reportLoadEnd",
  "reportToShow",
  "reportShow",
  "reportShowFailed",
  "reportClose",
  "reportClick",
  "reportRewarded",
  "reportConversionByClick",
  "reportConversionByLeftApp",
  "reportConversionByRewarded",
  "reportPaid",
  "reportPaidWithMediation",
  "reportLeftApp"
]);

const DtApiMethodHolder dtApiMethods4DTAnalytics =
    DtApiMethodHolder("DTAnalytics", [
  "trackEvent",
  "userSet",
  "userSetOnce",
  "userAdd",
  "userUnset",
  "userDelete",
  "userAppend",
  "userUniqAppend",
  "getDataTowerId",
  "setAccountId",
  "setFirebaseAppInstanceId",
  "setAppsFlyerId",
  "setKochavaId",
  "setAdjustId",
  "enableThirdPartySharing"
]);

class DtApiMethodHolder {
  final String name;
  final Iterable<String> methods;

  const DtApiMethodHolder(this.name, this.methods);
}

class DtApiMethod {
  final String name;
  final List<String> orderedParamNames;
  final List<String> orderedParam;
  final Map<String, String> namedParam;
  final void Function(List<dynamic> ordered, Map<String, dynamic> named) run;

  const DtApiMethod({
    required this.name,
    required this.orderedParamNames,
    required this.orderedParam,
    required this.namedParam,
    required this.run,
  });
}

final Map<String, DtApiMethod> dtApiMethods = {
  "DT_initSDK": DtApiMethod(
      name: "DT",
      orderedParamNames: ["appId", "url", "channel", "isDebug", "logLevel"],
      orderedParam: ["String", "String", "String", "bool", "int"],
      namedParam: {"commonProperties": "Map<String, Object?>"},
      run: (ordered, named) {
        DT.initSDK(ordered[0], ordered[1], ordered[2], ordered[3], ordered[4],
            commonProperties: named["commonProperties"]);
      }),
  "DTAdReport_reportLoadBegin": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: ["id", "type", "platform", "seq"],
      orderedParam: ["String", "AdTypeDart", "AdPlatformDart", "String"],
      namedParam: {"properties": "Map<String, Object?>?"},
      run: (ordered, named) {
        DTAdReport.reportLoadBegin(
            ordered[0], ordered[1], ordered[2], ordered[3],
            properties: named["properties"]);
      }),
  "DTAdReport_reportLoadEnd": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: [
        "id",
        "type",
        "platform",
        "duration",
        "result",
        "seq"
      ],
      orderedParam: [
        "String",
        "AdTypeDart",
        "AdPlatformDart",
        "int",
        "bool",
        "String"
      ],
      namedParam: {
        "errorCode": "int",
        "errorMessage": "String",
        "properties": "Map<String, Object?>?"
      },
      run: (ordered, named) {
        DTAdReport.reportLoadEnd(ordered[0], ordered[1], ordered[2], ordered[3],
            ordered[4], ordered[5],
            errorCode: named["errorCode"],
            errorMessage: named["errorMessage"],
            properties: named["properties"]);
      }),
  "DTAdReport_reportToShow": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: ["id", "type", "platform", "location", "seq"],
      orderedParam: [
        "String",
        "AdTypeDart",
        "AdPlatformDart",
        "String",
        "String"
      ],
      namedParam: {
        "properties": "Map<String, Object?>?",
        "entrance": "String?"
      },
      run: (ordered, named) {
        DTAdReport.reportToShow(
            ordered[0], ordered[1], ordered[2], ordered[3], ordered[4],
            properties: named["properties"], entrance: named["entrance"]);
      }),
  "DTAdReport_reportShow": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: ["id", "type", "platform", "location", "seq"],
      orderedParam: [
        "String",
        "AdTypeDart",
        "AdPlatformDart",
        "String",
        "String"
      ],
      namedParam: {
        "properties": "Map<String, Object?>?",
        "entrance": "String?"
      },
      run: (ordered, named) {
        DTAdReport.reportShow(
            ordered[0], ordered[1], ordered[2], ordered[3], ordered[4],
            properties: named["properties"], entrance: named["entrance"]);
      }),
  "DTAdReport_reportShowFailed": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: [
        "id",
        "type",
        "platform",
        "location",
        "seq",
        "errorCode",
        "errorMessage"
      ],
      orderedParam: [
        "String",
        "AdTypeDart",
        "AdPlatformDart",
        "String",
        "String",
        "int",
        "String"
      ],
      namedParam: {
        "properties": "Map<String, Object?>?",
        "entrance": "String?"
      },
      run: (ordered, named) {
        DTAdReport.reportShowFailed(ordered[0], ordered[1], ordered[2],
            ordered[3], ordered[4], ordered[5], ordered[6],
            properties: named["properties"], entrance: named["entrance"]);
      }),
  "DTAdReport_reportClose": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: ["id", "type", "platform", "location", "seq"],
      orderedParam: [
        "String",
        "AdTypeDart",
        "AdPlatformDart",
        "String",
        "String"
      ],
      namedParam: {
        "properties": "Map<String, Object?>?",
        "entrance": "String?"
      },
      run: (ordered, named) {
        DTAdReport.reportClose(
            ordered[0], ordered[1], ordered[2], ordered[3], ordered[4],
            properties: named["properties"], entrance: named["entrance"]);
      }),
  "DTAdReport_reportClick": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: ["id", "type", "platform", "location", "seq"],
      orderedParam: [
        "String",
        "AdTypeDart",
        "AdPlatformDart",
        "String",
        "String"
      ],
      namedParam: {
        "properties": "Map<String, Object?>?",
        "entrance": "String?"
      },
      run: (ordered, named) {
        DTAdReport.reportClick(
            ordered[0], ordered[1], ordered[2], ordered[3], ordered[4],
            properties: named["properties"], entrance: named["entrance"]);
      }),
  "DTAdReport_reportRewarded": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: ["id", "type", "platform", "location", "seq"],
      orderedParam: [
        "String",
        "AdTypeDart",
        "AdPlatformDart",
        "String",
        "String"
      ],
      namedParam: {
        "properties": "Map<String, Object?>?",
        "entrance": "String?"
      },
      run: (ordered, named) {
        DTAdReport.reportRewarded(
            ordered[0], ordered[1], ordered[2], ordered[3], ordered[4],
            properties: named["properties"], entrance: named["entrance"]);
      }),
  "DTAdReport_reportConversionByClick": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: ["id", "type", "platform", "location", "seq"],
      orderedParam: [
        "String",
        "AdTypeDart",
        "AdPlatformDart",
        "String",
        "String"
      ],
      namedParam: {
        "properties": "Map<String, Object?>?",
        "entrance": "String?"
      },
      run: (ordered, named) {
        DTAdReport.reportConversionByClick(
            ordered[0], ordered[1], ordered[2], ordered[3], ordered[4],
            properties: named["properties"], entrance: named["entrance"]);
      }),
  "DTAdReport_reportConversionByLeftApp": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: ["id", "type", "platform", "location", "seq"],
      orderedParam: [
        "String",
        "AdTypeDart",
        "AdPlatformDart",
        "String",
        "String"
      ],
      namedParam: {
        "properties": "Map<String, Object?>?",
        "entrance": "String?"
      },
      run: (ordered, named) {
        DTAdReport.reportConversionByLeftApp(
            ordered[0], ordered[1], ordered[2], ordered[3], ordered[4],
            properties: named["properties"], entrance: named["entrance"]);
      }),
  "DTAdReport_reportConversionByRewarded": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: ["id", "type", "platform", "location", "seq"],
      orderedParam: [
        "String",
        "AdTypeDart",
        "AdPlatformDart",
        "String",
        "String"
      ],
      namedParam: {
        "properties": "Map<String, Object?>?",
        "entrance": "String?"
      },
      run: (ordered, named) {
        DTAdReport.reportConversionByRewarded(
            ordered[0], ordered[1], ordered[2], ordered[3], ordered[4],
            properties: named["properties"], entrance: named["entrance"]);
      }),
  "DTAdReport_reportPaid": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: [
        "id",
        "type",
        "platform",
        "location",
        "seq",
        "value",
        "currency",
        "precision"
      ],
      orderedParam: [
        "String",
        "AdTypeDart",
        "AdPlatformDart",
        "String",
        "String",
        "String",
        "String",
        "String"
      ],
      namedParam: {
        "properties": "Map<String, Object?>?",
        "entrance": "String?"
      },
      run: (ordered, named) {
        DTAdReport.reportPaid(ordered[0], ordered[1], ordered[2], ordered[3],
            ordered[4], ordered[5], ordered[6], ordered[7],
            properties: named["properties"], entrance: named["entrance"]);
      }),
  "DTAdReport_reportPaidWithMediation": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: [
        "id",
        "type",
        "platform",
        "location",
        "seq",
        "mediation",
        "mediationId",
        "value",
        "currency",
        "precision"
      ],
      orderedParam: [
        "String",
        "AdTypeDart",
        "AdPlatformDart",
        "String",
        "String",
        "AdMediationDart",
        "String",
        "String",
        "String",
        "String"
      ],
      namedParam: {"properties": "Map<String, Object?>?"},
      run: (ordered, named) {
        DTAdReport.reportPaidWithMediation(
            ordered[0],
            ordered[1],
            ordered[2],
            ordered[3],
            ordered[4],
            ordered[5],
            ordered[6],
            ordered[7],
            ordered[8],
            ordered[9],
            properties: named["properties"]);
      }),
  "DTAdReport_reportLeftApp": DtApiMethod(
      name: "DTAdReport",
      orderedParamNames: ["id", "type", "platform", "location", "seq"],
      orderedParam: [
        "String",
        "AdTypeDart",
        "AdPlatformDart",
        "String",
        "String"
      ],
      namedParam: {
        "properties": "Map<String, Object?>?",
        "entrance": "String?"
      },
      run: (ordered, named) {
        DTAdReport.reportLeftApp(
            ordered[0], ordered[1], ordered[2], ordered[3], ordered[4],
            properties: named["properties"], entrance: named["entrance"]);
      }),
  "DTAnalytics_trackEvent": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: ["eventName", "properties"],
      orderedParam: ["String", "Map<String, Object?>"],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.trackEvent(
          ordered[0],
          ordered[1],
        );
      }),
  "DTAnalytics_userSet": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: ["properties"],
      orderedParam: ["Map<String, Object?>"],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.userSet(
          ordered[0],
        );
      }),
  "DTAnalytics_userSetOnce": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: ["properties"],
      orderedParam: ["Map<String, Object?>"],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.userSetOnce(
          ordered[0],
        );
      }),
  "DTAnalytics_userAdd": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: ["properties"],
      orderedParam: ["Map<String, Object?>"],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.userAdd(
          ordered[0],
        );
      }),
  "DTAnalytics_userUnset": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: ["properties"],
      orderedParam: ["List<String>"],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.userUnset(
          ordered[0],
        );
      }),
  "DTAnalytics_userDelete": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: [],
      orderedParam: [],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.userDelete();
      }),
  "DTAnalytics_userAppend": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: ["properties"],
      orderedParam: ["Map<String, Object?>"],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.userAppend(
          ordered[0],
        );
      }),
  "DTAnalytics_userUniqAppend": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: ["properties"],
      orderedParam: ["Map<String, Object?>"],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.userUniqAppend(
          ordered[0],
        );
      }),
  "DTAnalytics_getDataTowerId": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: [],
      orderedParam: [],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.getDataTowerId();
      }),
  "DTAnalytics_setAccountId": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: ["id"],
      orderedParam: ["String?"],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.setAccountId(
          ordered[0],
        );
      }),
  "DTAnalytics_setFirebaseAppInstanceId": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: ["id"],
      orderedParam: ["String?"],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.setFirebaseAppInstanceId(
          ordered[0],
        );
      }),
  "DTAnalytics_setAppsFlyerId": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: ["id"],
      orderedParam: ["String?"],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.setAppsFlyerId(
          ordered[0],
        );
      }),
  "DTAnalytics_setKochavaId": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: ["id"],
      orderedParam: ["String?"],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.setKochavaId(
          ordered[0],
        );
      }),
  "DTAnalytics_setAdjustId": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: ["id"],
      orderedParam: ["String?"],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.setAdjustId(
          ordered[0],
        );
      }),
  "DTAnalytics_enableThirdPartySharing": DtApiMethod(
      name: "DTAnalytics",
      orderedParamNames: ["type"],
      orderedParam: ["int"],
      namedParam: {},
      run: (ordered, named) {
        DTAnalytics.enableThirdPartySharing(
          ordered[0],
        );
      })
};
