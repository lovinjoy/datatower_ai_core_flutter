//
//  DTEnumHelper.m
//  datatower_ai_core_flutter
//
//  Created by Lilin on 2023/9/27.
//

#import "DTEnumHelper.h"

@implementation DTEnumHelper

+ (DTAdType)converAdType:(DTAdTypeDart)adTypeDart
{
    DTAdType ret = DTAdTypeIdle;
    switch (adTypeDart) {
        case DTAdTypeDartIDLE:
            ret = DTAdTypeIdle;
            break;
            
        case DTAdTypeDartBANNER:
            ret = DTAdTypeBanner;
            break;
            
        case DTAdTypeDartINTERSTITIAL:
            ret = DTAdTypeInterstitial;
            break;
            
        case DTAdTypeDartNATIVE:
            ret = DTAdTypeNative;
            break;
            
        case DTAdTypeDartREWARDED:
            ret = DTAdTypeRewarded;
            break;
            
        case DTAdTypeDartREWARDED_INTERSTITIAL:
            ret = DTAdTypeRewardedInterstitial;
            break;
            
        case DTAdTypeDartAPP_OPEN:
            ret = DTAdTypeAppOpen;
            break;
            
        case DTAdTypeDartMREC:
            ret = DTAdTypeMREC;
            break;
            
        default:
            break;
    }
    return ret;
}

+ (DTAdPlatform)convertPlatformType:(DTAdPlatformDart)platformDart
{
//    DTAdPlatformDartLOVINJOYADS = 21,
    DTAdPlatform ret = DTAdPlatformUndisclosed;
    
    switch (platformDart) {
        case DTAdPlatformDartUNDISCLOSED:
            ret = DTAdPlatformUndisclosed;
            break;
        case DTAdPlatformDartIDLE:
            ret = DTAdPlatformIdle;
            break;
        case DTAdPlatformDartADMOB:
            ret = DTAdPlatformAdmob;
            break;
        case DTAdPlatformDartMOPUB:
            ret = DTAdPlatformMopub;
            break;
        case DTAdPlatformDartADCOLONY:
            ret = DTAdPlatformAdcolony;
            break;
        case DTAdPlatformDartAPPLOVIN:
            ret = DTAdPlatformApplovin;
            break;
        case DTAdPlatformDartCHARTBOOST:
            ret = DTAdPlatformChartboost;
            break;
        case DTAdPlatformDartFACEBOOK:
            ret = DTAdPlatformFaceBook;
            break;
        case DTAdPlatformDartINMOBI:
            ret = DTAdPlatformInmobi;
            break;
        case DTAdPlatformDartIRONSOURCE:
            ret = DTAdPlatformIronsource;
            break;
        case DTAdPlatformDartPANGLE:
            ret = DTAdPlatformPangle;
            break;
        case DTAdPlatformDartSNAP_AUDIENCE_NETWORK:
            ret = DTAdPlatformSnapAudienceNetwork;
            break;
        case DTAdPlatformDartTAPJOY:
            ret = DTAdPlatformTapjoy;
            break;
        case DTAdPlatformDartUNITY_ADS:
            ret = DTAdPlatformUnityAds;
            break;
        case DTAdPlatformDartVERIZON_MEDIA:
            ret = DTAdPlatformVerizonMedia;
            break;
        case DTAdPlatformDartVUNGLE:
            ret = DTAdPlatformVungle;
            break;
        case DTAdPlatformDartADX:
            ret = DTAdPlatformADX;
            break;
        case DTAdPlatformDartCOMBO:
            ret = DTAdPlatformCombo;
            break;
        case DTAdPlatformDartBIGO:
            ret = DTAdPlatformBigo;
            break;
        case DTAdPlatformDartHISAVANA:
            ret = DTAdPlatformHisavana;
            break;
        case DTAdPlatformDartAPPLOVIN_EXCHANGE:
            ret = DTAdPlatformApplovinExchange;
            break;
        case DTAdPlatformDartLOVINJOYADS:
            ret = DTAdPlatformLovinJoyAds;
            break;
        default:
            break;
    }
    return ret;
}

+ (DTAdMediation)convertMediationType:(DTAdMediationDart)typeDart
{
    DTAdMediation ret = DTAdMediationIdle;
    switch (typeDart) {
        case DTAdMediationDartIDLE:
            ret = DTAdMediationIdle;
            break;
            
        case DTAdMediationDartMOPUB:
            ret = DTAdMediationMopub;
            break;
            
        case DTAdMediationDartMAX:
            ret = DTAdMediationMax;
            break;
            
        case DTAdMediationDartHISAVANA:
            ret = DTAdMediationHisavana;
            break;
            
        case DTAdMediationDartCOMBO:
            ret = DTAdMediationCombo;
            break;
            
        default:
            break;
    }
    return ret;
}

@end
