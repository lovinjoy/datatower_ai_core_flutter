// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import <Foundation/Foundation.h>

@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN


/// The codec used by DTDTIasPigeon.
NSObject<FlutterMessageCodec> *DTDTIasPigeonGetCodec(void);

@protocol DTDTIasPigeon
- (void)reportPurchaseSuccessOriginalOrderId:(NSString *)originalOrderId orderId:(NSString *)orderId sku:(NSString *)sku price:(NSNumber *)price currency:(NSString *)currency properties:(nullable NSDictionary<NSString *, id> *)properties error:(FlutterError *_Nullable *_Nonnull)error;
@end

extern void DTDTIasPigeonSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<DTDTIasPigeon> *_Nullable api);

NS_ASSUME_NONNULL_END
