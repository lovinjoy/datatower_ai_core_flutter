import 'package:datatower_ai_core_flutter/src/services/dt_ad_service.dart';
import 'package:datatower_ai_core_flutter/src/services/dt_analytics_service.dart';
import 'package:datatower_ai_core_flutter/src/services/dt_analytics_util_service.dart';
import 'package:datatower_ai_core_flutter/src/services/dt_iap_service.dart';
import 'package:datatower_ai_core_flutter/src/services/dt_ias_service.dart';
import 'package:datatower_ai_core_flutter/src/services/dt_service.dart';
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

  late final DTAdService dtAdService;
  late final DTAnalyticsService dtAnalyticsService;
  late final DTAnalyticsUtilService dtAnalyticsUtilService;
  late final DTIapService dtIapService;
  late final DTIasService dtIasService;
  late final DTService dtService;


  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
