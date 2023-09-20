import 'package:datatower_ai_core_flutter/src/services/dt_ad_service.dart';
import 'package:datatower_ai_core_flutter/src/services/dt_analytics_service.dart';
import 'package:datatower_ai_core_flutter/src/services/dt_analytics_util_service.dart';
import 'package:datatower_ai_core_flutter/src/services/dt_iap_service.dart';
import 'package:datatower_ai_core_flutter/src/services/dt_ias_service.dart';
import 'package:datatower_ai_core_flutter/src/services/dt_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'datatower_ai_core_flutter_platform_interface.dart';

/// An implementation of [DatatowerAiCoreFlutterPlatform] that uses method channels.
class MethodChannelDatatowerAiCoreFlutter
    extends DatatowerAiCoreFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('datatower_ai_core_flutter');

  late final DTService _dtService = DTService(methodChannel);
  @override
  DTService get dtService => _dtService;

  late final DTAdService _dtAdService = DTAdService(methodChannel);
  @override
  DTAdService get dtAdService => _dtAdService;

  late final DTAnalyticsService _dtAnalyticsService = DTAnalyticsService(methodChannel);
  @override
  DTAnalyticsService get dtAnalyticsService => _dtAnalyticsService;

  late final DTAnalyticsUtilService _dtAnalyticsUtilService = DTAnalyticsUtilService(methodChannel);
  @override
  DTAnalyticsUtilService get dtAnalyticsUtilService => _dtAnalyticsUtilService;

  late final DTIapService _dtIapService = DTIapService(methodChannel);
  @override
  DTIapService get dtIapService => _dtIapService;

  late final DTIasService _dtIasService = DTIasService(methodChannel);
  @override
  DTIasService get dtIasService => _dtIasService;


  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
