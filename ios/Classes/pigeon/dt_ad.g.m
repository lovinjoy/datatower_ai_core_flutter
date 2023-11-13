// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "dt_ad.g.h"

#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

@implementation DTAdTypeDartBox
- (instancetype)initWithValue:(DTAdTypeDart)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

@implementation DTAdMediationDartBox
- (instancetype)initWithValue:(DTAdMediationDart)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

@implementation DTAdPlatformDartBox
- (instancetype)initWithValue:(DTAdPlatformDart)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}
static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

NSObject<FlutterMessageCodec> *DTDTAdPigeonGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  sSharedObject = [FlutterStandardMessageCodec sharedInstance];
  return sSharedObject;
}

void DTDTAdPigeonSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<DTDTAdPigeon> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportLoadBegin"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportLoadBeginId:type:platform:seq:properties:mediation:mediationId:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportLoadBeginId:type:platform:seq:properties:mediation:mediationId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSString *arg_seq = GetNullableObjectAtIndex(args, 3);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 4);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 5) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 6);
        FlutterError *error;
        [api reportLoadBeginId:arg_id type:arg_type platform:arg_platform seq:arg_seq properties:arg_properties mediation:arg_mediation mediationId:arg_mediationId error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportLoadEnd"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportLoadEndId:type:platform:duration:result:seq:errorCode:errorMessage:properties:mediation:mediationId:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportLoadEndId:type:platform:duration:result:seq:errorCode:errorMessage:properties:mediation:mediationId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSNumber *arg_duration = GetNullableObjectAtIndex(args, 3);
        NSNumber *arg_result = GetNullableObjectAtIndex(args, 4);
        NSString *arg_seq = GetNullableObjectAtIndex(args, 5);
        NSNumber *arg_errorCode = GetNullableObjectAtIndex(args, 6);
        NSString *arg_errorMessage = GetNullableObjectAtIndex(args, 7);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 8);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 9) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 10);
        FlutterError *error;
        [api reportLoadEndId:arg_id type:arg_type platform:arg_platform duration:arg_duration result:arg_result seq:arg_seq errorCode:arg_errorCode errorMessage:arg_errorMessage properties:arg_properties mediation:arg_mediation mediationId:arg_mediationId error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportToShow"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportToShowId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportToShowId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSString *arg_location = GetNullableObjectAtIndex(args, 3);
        NSString *arg_seq = GetNullableObjectAtIndex(args, 4);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 5);
        NSString *arg_entrance = GetNullableObjectAtIndex(args, 6);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 7) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 8);
        FlutterError *error;
        [api reportToShowId:arg_id type:arg_type platform:arg_platform location:arg_location seq:arg_seq properties:arg_properties entrance:arg_entrance mediation:arg_mediation mediationId:arg_mediationId error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportShow"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportShowId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportShowId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSString *arg_location = GetNullableObjectAtIndex(args, 3);
        NSString *arg_seq = GetNullableObjectAtIndex(args, 4);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 5);
        NSString *arg_entrance = GetNullableObjectAtIndex(args, 6);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 7) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 8);
        FlutterError *error;
        [api reportShowId:arg_id type:arg_type platform:arg_platform location:arg_location seq:arg_seq properties:arg_properties entrance:arg_entrance mediation:arg_mediation mediationId:arg_mediationId error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportShowFailed"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportShowFailedId:type:platform:location:seq:errorCode:errorMessage:properties:entrance:mediation:mediationId:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportShowFailedId:type:platform:location:seq:errorCode:errorMessage:properties:entrance:mediation:mediationId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSString *arg_location = GetNullableObjectAtIndex(args, 3);
        NSString *arg_seq = GetNullableObjectAtIndex(args, 4);
        NSNumber *arg_errorCode = GetNullableObjectAtIndex(args, 5);
        NSString *arg_errorMessage = GetNullableObjectAtIndex(args, 6);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 7);
        NSString *arg_entrance = GetNullableObjectAtIndex(args, 8);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 9) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 10);
        FlutterError *error;
        [api reportShowFailedId:arg_id type:arg_type platform:arg_platform location:arg_location seq:arg_seq errorCode:arg_errorCode errorMessage:arg_errorMessage properties:arg_properties entrance:arg_entrance mediation:arg_mediation mediationId:arg_mediationId error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportClose"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportCloseId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportCloseId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSString *arg_location = GetNullableObjectAtIndex(args, 3);
        NSString *arg_seq = GetNullableObjectAtIndex(args, 4);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 5);
        NSString *arg_entrance = GetNullableObjectAtIndex(args, 6);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 7) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 8);
        FlutterError *error;
        [api reportCloseId:arg_id type:arg_type platform:arg_platform location:arg_location seq:arg_seq properties:arg_properties entrance:arg_entrance mediation:arg_mediation mediationId:arg_mediationId error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportClick"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportClickId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportClickId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSString *arg_location = GetNullableObjectAtIndex(args, 3);
        NSString *arg_seq = GetNullableObjectAtIndex(args, 4);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 5);
        NSString *arg_entrance = GetNullableObjectAtIndex(args, 6);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 7) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 8);
        FlutterError *error;
        [api reportClickId:arg_id type:arg_type platform:arg_platform location:arg_location seq:arg_seq properties:arg_properties entrance:arg_entrance mediation:arg_mediation mediationId:arg_mediationId error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportRewarded"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportRewardedId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportRewardedId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSString *arg_location = GetNullableObjectAtIndex(args, 3);
        NSString *arg_seq = GetNullableObjectAtIndex(args, 4);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 5);
        NSString *arg_entrance = GetNullableObjectAtIndex(args, 6);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 7) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 8);
        FlutterError *error;
        [api reportRewardedId:arg_id type:arg_type platform:arg_platform location:arg_location seq:arg_seq properties:arg_properties entrance:arg_entrance mediation:arg_mediation mediationId:arg_mediationId error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportConversionByClick"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportConversionByClickId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportConversionByClickId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSString *arg_location = GetNullableObjectAtIndex(args, 3);
        NSString *arg_seq = GetNullableObjectAtIndex(args, 4);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 5);
        NSString *arg_entrance = GetNullableObjectAtIndex(args, 6);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 7) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 8);
        FlutterError *error;
        [api reportConversionByClickId:arg_id type:arg_type platform:arg_platform location:arg_location seq:arg_seq properties:arg_properties entrance:arg_entrance mediation:arg_mediation mediationId:arg_mediationId error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportConversionByLeftApp"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportConversionByLeftAppId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportConversionByLeftAppId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSString *arg_location = GetNullableObjectAtIndex(args, 3);
        NSString *arg_seq = GetNullableObjectAtIndex(args, 4);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 5);
        NSString *arg_entrance = GetNullableObjectAtIndex(args, 6);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 7) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 8);
        FlutterError *error;
        [api reportConversionByLeftAppId:arg_id type:arg_type platform:arg_platform location:arg_location seq:arg_seq properties:arg_properties entrance:arg_entrance mediation:arg_mediation mediationId:arg_mediationId error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportConversionByRewarded"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportConversionByRewardedId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportConversionByRewardedId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSString *arg_location = GetNullableObjectAtIndex(args, 3);
        NSString *arg_seq = GetNullableObjectAtIndex(args, 4);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 5);
        NSString *arg_entrance = GetNullableObjectAtIndex(args, 6);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 7) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 8);
        FlutterError *error;
        [api reportConversionByRewardedId:arg_id type:arg_type platform:arg_platform location:arg_location seq:arg_seq properties:arg_properties entrance:arg_entrance mediation:arg_mediation mediationId:arg_mediationId error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportPaid"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportPaidId:type:platform:location:seq:value:currency:precision:properties:entrance:mediation:mediationId:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportPaidId:type:platform:location:seq:value:currency:precision:properties:entrance:mediation:mediationId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSString *arg_location = GetNullableObjectAtIndex(args, 3);
        NSString *arg_seq = GetNullableObjectAtIndex(args, 4);
        NSNumber *arg_value = GetNullableObjectAtIndex(args, 5);
        NSString *arg_currency = GetNullableObjectAtIndex(args, 6);
        NSString *arg_precision = GetNullableObjectAtIndex(args, 7);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 8);
        NSString *arg_entrance = GetNullableObjectAtIndex(args, 9);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 10) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 11);
        FlutterError *error;
        [api reportPaidId:arg_id type:arg_type platform:arg_platform location:arg_location seq:arg_seq value:arg_value currency:arg_currency precision:arg_precision properties:arg_properties entrance:arg_entrance mediation:arg_mediation mediationId:arg_mediationId error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportPaidWithCountry"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportPaidWithCountryId:type:platform:location:seq:mediation:mediationId:value:precision:country:properties:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportPaidWithCountryId:type:platform:location:seq:mediation:mediationId:value:precision:country:properties:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSString *arg_location = GetNullableObjectAtIndex(args, 3);
        NSString *arg_seq = GetNullableObjectAtIndex(args, 4);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 5) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 6);
        NSNumber *arg_value = GetNullableObjectAtIndex(args, 7);
        NSString *arg_precision = GetNullableObjectAtIndex(args, 8);
        NSString *arg_country = GetNullableObjectAtIndex(args, 9);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 10);
        FlutterError *error;
        [api reportPaidWithCountryId:arg_id type:arg_type platform:arg_platform location:arg_location seq:arg_seq mediation:arg_mediation mediationId:arg_mediationId value:arg_value precision:arg_precision country:arg_country properties:arg_properties error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.datatower_ai_core.DTAdPigeon.reportLeftApp"
        binaryMessenger:binaryMessenger
        codec:DTDTAdPigeonGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(reportLeftAppId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)], @"DTDTAdPigeon api (%@) doesn't respond to @selector(reportLeftAppId:type:platform:location:seq:properties:entrance:mediation:mediationId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        DTAdTypeDart arg_type = [GetNullableObjectAtIndex(args, 1) integerValue];
        DTAdPlatformDart arg_platform = [GetNullableObjectAtIndex(args, 2) integerValue];
        NSString *arg_location = GetNullableObjectAtIndex(args, 3);
        NSString *arg_seq = GetNullableObjectAtIndex(args, 4);
        NSDictionary<NSString *, id> *arg_properties = GetNullableObjectAtIndex(args, 5);
        NSString *arg_entrance = GetNullableObjectAtIndex(args, 6);
        DTAdMediationDart arg_mediation = [GetNullableObjectAtIndex(args, 7) integerValue];
        NSString *arg_mediationId = GetNullableObjectAtIndex(args, 8);
        FlutterError *error;
        [api reportLeftAppId:arg_id type:arg_type platform:arg_platform location:arg_location seq:arg_seq properties:arg_properties entrance:arg_entrance mediation:arg_mediation mediationId:arg_mediationId error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
