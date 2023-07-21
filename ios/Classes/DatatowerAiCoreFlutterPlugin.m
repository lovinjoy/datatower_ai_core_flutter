#import "DatatowerAiCoreFlutterPlugin.h"
#import <DataTowerAICore/DT.h>

@implementation DatatowerAiCoreFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"datatower_ai_core_flutter"
            binaryMessenger:[registrar messenger]];
  DatatowerAiCoreFlutterPlugin* instance = [[DatatowerAiCoreFlutterPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    if ([@"getPlatformVersion" isEqualToString:call.method]) {
        result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
    }
    if ([@"initSDK" isEqualToString:call.method]) {
        if ([call.arguments isKindOfClass:[NSDictionary class]]) {
            NSDictionary *arguments = call.arguments;
            NSString *appId = arguments[@"appId"];
            NSString *url = arguments[@"url"];
            DTChannel channel = [arguments[@"channel"] intValue];
            BOOL isDebug = [arguments[@"isDebug"] boolValue];
            DTLoggingLevel logLevel = [arguments[@"logLevel"] intValue];
            
            [DT initSDK:appId serverUrl:url channel:channel isDebug:isDebug logLevel:logLevel];
        }
        result(nil);
    }
    if ([@"trackEvent" isEqualToString:call.method]) {
        if ([call.arguments isKindOfClass:[NSDictionary class]]) {
            NSDictionary *arguments = call.arguments;
            NSString *eventName = arguments[@"eventName"];
            NSDictionary *properties = arguments[@"properties"];
                                            
            [DTAnalytics trackEventName:eventName properties:properties];
        }
        result(nil);
    }else {
        result(FlutterMethodNotImplemented);
    }
}

@end
