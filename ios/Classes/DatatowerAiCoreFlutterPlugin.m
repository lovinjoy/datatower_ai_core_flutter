#import "DatatowerAiCoreFlutterPlugin.h"
#import "dt.g.h"
#import "dt_ad.g.h"
#import "dt_analytics.g.h"
#import "dt_analytics_util.g.h"

#import "DTBridge.h"
#import "DTAdBridge.h"
#import "DTUtilBridge.h"
#import "DTAnalyticsBridge.h"

@implementation DatatowerAiCoreFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterMethodChannel* channel = [FlutterMethodChannel
                                     methodChannelWithName:@"datatower_ai_core"
                                     binaryMessenger:[registrar messenger]];
    DatatowerAiCoreFlutterPlugin* instance = [[DatatowerAiCoreFlutterPlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
    
    
    DTDTPigeonSetup([registrar messenger], [[DTBridge alloc] init]);
    DTDTAdPigeonSetup([registrar messenger], [[DTAdBridge alloc] init]);
    DTDTAnalyticsPigeonSetup([registrar messenger], [[DTAnalyticsBridge alloc] init]);
    DTDTAnalyticsUtilPigeonSetup([registrar messenger], [[DTUtilBridge alloc] init]);
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    if ([@"getPlatformVersion" isEqualToString:call.method]) {
        result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
    }else {
        result(FlutterMethodNotImplemented);
    }
}

@end
