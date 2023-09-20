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
    <#code#>
}

- (void)reportConversionByClickId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    <#code#>
}

- (void)reportConversionByLeftAppId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    <#code#>
}

- (void)reportConversionByRewardedId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    <#code#>
}

- (void)reportLeftAppId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    <#code#>
}

- (void)reportLoadBeginId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    <#code#>
}

- (void)reportLoadEndId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform duration:(nonnull NSNumber *)duration result:(nonnull NSNumber *)result seq:(nonnull NSString *)seq errorCode:(nonnull NSNumber *)errorCode errorMessage:(nonnull NSString *)errorMessage properties:(nonnull NSDictionary<NSString *,id> *)properties error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    <#code#>
}

- (void)reportPaidId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq value:(nonnull NSString *)value currency:(nonnull NSString *)currency precision:(nonnull NSString *)precision properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    <#code#>
}

- (void)reportPaidWithMediationId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq mediation:(DTAdMediationDart)mediation mediationId:(nonnull NSString *)mediationId value:(nonnull NSString *)value precision:(nonnull NSString *)precision country:(nonnull NSString *)country properties:(nonnull NSDictionary<NSString *,id> *)properties error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    <#code#>
}

- (void)reportRewardedId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    <#code#>
}

- (void)reportShowFailedId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq errorCode:(nonnull NSNumber *)errorCode errorMessage:(nonnull NSString *)errorMessage properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    <#code#>
}

- (void)reportShowId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    <#code#>
}

- (void)reportToShowId:(nonnull NSString *)id type:(DTAdTypeDart)type platform:(DTAdPlatformDart)platform location:(nonnull NSString *)location seq:(nonnull NSString *)seq properties:(nonnull NSDictionary<NSString *,id> *)properties entrance:(nonnull NSString *)entrance error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    <#code#>
}

@end
