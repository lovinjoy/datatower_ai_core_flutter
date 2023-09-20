#import "DatatowerAiCoreFlutterPlugin.h"
#import "dt.g.h"
#import "DTBridge.h"

@implementation DatatowerAiCoreFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterMethodChannel* channel = [FlutterMethodChannel
                                     methodChannelWithName:@"datatower_ai_core_flutter"
                                     binaryMessenger:[registrar messenger]];
    DatatowerAiCoreFlutterPlugin* instance = [[DatatowerAiCoreFlutterPlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
    
    
    DTDTPigeonSetup([registrar messenger], [[DTBridge alloc] init]);
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    if ([@"getPlatformVersion" isEqualToString:call.method]) {
        result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
    }else {
        result(FlutterMethodNotImplemented);
    }
}

@end
