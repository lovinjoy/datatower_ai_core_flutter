// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import <Foundation/Foundation.h>

@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN


/// The codec used by DTDTAnalyticsPigeon.
NSObject<FlutterMessageCodec> *DTDTAnalyticsPigeonGetCodec(void);

@protocol DTDTAnalyticsPigeon
- (void)trackEventEventName:(NSString *)eventName properties:(NSDictionary<NSString *, id> *)properties error:(FlutterError *_Nullable *_Nonnull)error;
- (void)userSetProperties:(NSDictionary<NSString *, id> *)properties error:(FlutterError *_Nullable *_Nonnull)error;
- (void)userSetOnceProperties:(NSDictionary<NSString *, id> *)properties error:(FlutterError *_Nullable *_Nonnull)error;
- (void)userAddProperties:(NSDictionary<NSString *, id> *)properties error:(FlutterError *_Nullable *_Nonnull)error;
- (void)userUnsetProperties:(NSArray<NSString *> *)properties error:(FlutterError *_Nullable *_Nonnull)error;
- (void)userDeleteWithError:(FlutterError *_Nullable *_Nonnull)error;
- (void)userAppendProperties:(NSDictionary<NSString *, id> *)properties error:(FlutterError *_Nullable *_Nonnull)error;
- (void)userUniqAppendProperties:(NSDictionary<NSString *, id> *)properties error:(FlutterError *_Nullable *_Nonnull)error;
- (void)getDataTowerIdWithCompletion:(void (^)(NSString *_Nullable, FlutterError *_Nullable))completion;
- (void)setAccountIdId:(nullable NSString *)id error:(FlutterError *_Nullable *_Nonnull)error;
- (void)setFirebaseAppInstanceIdId:(nullable NSString *)id error:(FlutterError *_Nullable *_Nonnull)error;
- (void)setAppsFlyerIdId:(nullable NSString *)id error:(FlutterError *_Nullable *_Nonnull)error;
- (void)setKochavaIdId:(nullable NSString *)id error:(FlutterError *_Nullable *_Nonnull)error;
- (void)setAdjustIdId:(nullable NSString *)id error:(FlutterError *_Nullable *_Nonnull)error;
- (void)enableThirdPartySharingType:(NSNumber *)type error:(FlutterError *_Nullable *_Nonnull)error;
@end

extern void DTDTAnalyticsPigeonSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<DTDTAnalyticsPigeon> *_Nullable api);

NS_ASSUME_NONNULL_END
