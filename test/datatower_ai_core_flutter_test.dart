import 'package:flutter_test/flutter_test.dart';
import 'package:datatower_ai_core_flutter/datatower_ai_core_flutter.dart';
import 'package:datatower_ai_core_flutter/datatower_ai_core_flutter_platform_interface.dart';
import 'package:datatower_ai_core_flutter/datatower_ai_core_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDatatowerAiCoreFlutterPlatform
    with MockPlatformInterfaceMixin
    implements DatatowerAiCoreFlutterPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  void initSDK(
      String appId, String url, int channel, bool isDebug, int logLevel) {}

  @override
  void trackEvent(String eventName, Map properties) {}
}

void main() {
  final DatatowerAiCoreFlutterPlatform initialPlatform =
      DatatowerAiCoreFlutterPlatform.instance;

  test('$MethodChannelDatatowerAiCoreFlutter is the default instance', () {
    expect(
        initialPlatform, isInstanceOf<MethodChannelDatatowerAiCoreFlutter>());
  });

  test('getPlatformVersion', () async {
    DatatowerAiCoreFlutter datatowerAiCoreFlutterPlugin =
        DatatowerAiCoreFlutter();
    MockDatatowerAiCoreFlutterPlatform fakePlatform =
        MockDatatowerAiCoreFlutterPlatform();
    DatatowerAiCoreFlutterPlatform.instance = fakePlatform;

    expect(await datatowerAiCoreFlutterPlugin.getPlatformVersion(), '42');
  });
}
