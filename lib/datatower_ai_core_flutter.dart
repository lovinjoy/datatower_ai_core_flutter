import 'datatower_ai_core_flutter_platform_interface.dart';

class DatatowerAiCoreFlutter {
  Future<String?> getPlatformVersion() {
    return DatatowerAiCoreFlutterPlatform.instance.getPlatformVersion();
  }

  void initSDK(
      String appId, String url, int channel, bool isDebug, int logLevel) {
    DatatowerAiCoreFlutterPlatform.instance
        .initSDK(appId, url, channel, isDebug, logLevel);
  }

  void trackEvent(String eventName, Map properties) {
    DatatowerAiCoreFlutterPlatform.instance.trackEvent(eventName, properties);
  }
}
