//
//  DTAdBridge.m
//  datatower_ai_core_flutter
//
//  Created by Lilin on 2023/9/20.
//

#import "DTAdBridge.h"
#import <DataTowerAICore/DTAdReport.h>

@implementation DTAdBridge

- (void)reportClickId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    
    [DTAdReport reportClick:id type:type platform:platform location:location seq:seq properties:properties entrance:entrance];
}

- (void)reportCloseId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    
    [DTAdReport reportClose:id type:type platform:platform location:location seq:seq properties:properties entrance:entrance];
}

- (void)reportConversionByClickId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    [DTAdReport reportConversionByClick:id type:type platform:platform location:location seq:seq properties:properties entrance:entrance];
}

- (void)reportConversionByLeftAppId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    
    [DTAdReport reportConversionByLeftApp:id type:type platform:platform location:location seq:seq properties:properties entrance:entrance];
}

- (void)reportConversionByRewardedId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    [DTAdReport reportConversionByRewarded:id type:type platform:platform location:location seq:seq properties:properties entrance:entrance];
}

- (void)reportLeftAppId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    [DTAdReport reportLeftApp:id type:type platform:platform location:location seq:seq properties:properties entrance:entrance];
}

- (void)reportLoadBeginId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    
    [DTAdReport reportLoadBegin:id type:type platform:platform seq:seq properties:properties];
}

- (void)reportLoadEndId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform duration:(nonnull NSNumber *)duration result:(nonnull NSNumber *)result seq:(nonnull NSString *)seq errorCode:(nonnull NSNumber *)errorCode errorMessage:(nonnull NSString *)errorMessage properties:(nonnull NSDictionary<NSString *,id> *)properties error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    
    [DTAdReport reportLoadEnd:id type:type platform:platform duration:duration result:[result boolValue] seq:seq errorCode:errorCode.intValue errorMessage:errorMessage properties:properties];
}

- (void)reportPaidId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq value:(nonnull NSString *)value currency:(nonnull NSString *)currency precision:(nonnull NSString *)precision properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    
    [DTAdReport reportPaid:id type:type platform:platform location:location seq:seq value:value currency:currency precision:precision properties:properties entrance:entrance];
}

- (void)reportPaidWithMediationId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq mediation:(DTAdMediationDart)mediation mediationId:(nonnull NSString *)mediationId value:(nonnull NSString *)value precision:(nonnull NSString *)precision country:(nonnull NSString *)country properties:(nonnull NSDictionary<NSString *,id> *)properties error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    
    [DTAdReport reportPaid:id type:type platform:platform location:location seq:seq mediation:mediation mediationId:mediationId value:value precision:precision country:country properties:properties entrance:@""];
}

- (void)reportRewardedId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    
    [DTAdReport reportRewarded:id type:type platform:platform location:location seq:seq properties:properties entrance:entrance];
}

- (void)reportShowFailedId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq errorCode:(nonnull NSNumber *)errorCode errorMessage:(nonnull NSString *)errorMessage properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    
    [DTAdReport reportAdShowFail:id type:type platform:platform location:location seq:seq errorCode:errorCode.intValue errorMessage:errorMessage properties:properties entrance:entrance];
}

- (void)reportShowId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    
    [DTAdReport reportShow:id type:type platform:platform location:location seq:seq properties:properties entrance:entrance];
}

- (void)reportToShowId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    
    [DTAdReport reportToShow:id type:type platform:platform location:location seq:seq properties:properties entrance:entrance];
}

@end
