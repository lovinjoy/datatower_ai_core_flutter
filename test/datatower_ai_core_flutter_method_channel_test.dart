import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:datatower_ai_core_flutter/datatower_ai_core_flutter_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelDatatowerAiCoreFlutter platform = MethodChannelDatatowerAiCoreFlutter();
  const MethodChannel channel = MethodChannel('datatower_ai_core_flutter');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
