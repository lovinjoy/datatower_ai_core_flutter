import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'datatower_ai_core_flutter_method_channel.dart';

abstract class DatatowerAiCoreFlutterPlatform extends PlatformInterface {
  /// Constructs a DatatowerAiCoreFlutterPlatform.
  DatatowerAiCoreFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static DatatowerAiCoreFlutterPlatform _instance =
      MethodChannelDatatowerAiCoreFlutter();

  /// The default instance of [DatatowerAiCoreFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelDatatowerAiCoreFlutter].
  static DatatowerAiCoreFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DatatowerAiCoreFlutterPlatform] when
  /// they register themselves.
  static set instance(DatatowerAiCoreFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  void initSDK(
      String appId, String url, int channel, bool isDebug, int logLevel) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  void trackEvent(String eventName, Map properties) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
