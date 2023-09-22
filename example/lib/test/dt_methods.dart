// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// DtApiMethodsGenerator
// **************************************************************************

const List<DtApiMethodHolder> dtApiMethodHolders = [
  dtApiMethods4DTAdReport,
  dtApiMethods4DTAnalyticsUtil,
  dtApiMethods4DTAnalytics,
  dtApiMethods4DT
];

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

const DtApiMethodHolder dtApiMethods4DTAnalyticsUtil = DtApiMethodHolder(
    "DTAnalyticsUtil", [
  "trackTimerStart",
  "trackTimerPause",
  "trackTimerResume",
  "trackTimerEnd"
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

const DtApiMethodHolder dtApiMethods4DT = DtApiMethodHolder("DT", ["initSDK"]);

class DtApiMethodHolder {
  final String fileName;
  final Iterable<String> methods;

  const DtApiMethodHolder(this.fileName, this.methods);
}
