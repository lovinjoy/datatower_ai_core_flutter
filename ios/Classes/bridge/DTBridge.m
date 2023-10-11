//
//  DTBridge.m
//  datatower_ai_core_flutter
//
//  Created by Lilin on 2023/9/20.
//

#import "DTBridge.h"
#import <DataTowerAICore/DT.h>

@implementation DTBridge

- (void)initSDKAppId:(nonnull NSString *)appId url:(nonnull NSString *)url channel:(nonnull NSString *)channel isDebug:(nonnull NSNumber *)isDebug logLevel:(nonnull NSNumber *)logLevel commonProperties:(nonnull NSDictionary<NSString *,id> *)commonProperties error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    
    [DT initSDK:appId serverUrl:url channel:DTChannelAppStore isDebug:[isDebug boolValue] logLevel:[logLevel intValue] commonProperties:commonProperties];
}

@end
