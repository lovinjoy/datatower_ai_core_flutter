import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'datatower_ai_core_flutter_platform_interface.dart';

/// An implementation of [DatatowerAiCoreFlutterPlatform] that uses method channels.
class MethodChannelDatatowerAiCoreFlutter
    extends DatatowerAiCoreFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('datatower_ai_core_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  void initSDK(
      String appId, String url, int channel, bool isDebug, int logLevel) {
    methodChannel.invokeMethod<String>('initSDK', <String, dynamic>{
      'appId': appId,
      'url': url,
      "channel": channel,
      "isDebug": isDebug,
      "logLevel": logLevel,
    });
  }

  @override
  void trackEvent(String eventName, Map properties) {
    Map args = {};
    args["eventName"] = eventName;
    args["properties"] = properties;
    methodChannel.invokeMethod<String>('trackEvent', args);
  }
}
