# 2.1.0

> &#x26A0; this version has **BREAKING CHANGE**

* Added in-code doc for all APIs.
* Upgraded DT Android to 2.1.x 
  * Supports seamless update within ">=2.1.0 <2.2.0".
* Upgraded DT iOS to 2.1.x.
  * Supports seamless update within ">=2.1.0 <2.2.0".
* Restrict DTAnalytics.userAppend, DTAnalytics.userUniqAppend to only accept List as value in 
JsonMap.  
* Changes return type for all of functions to Future, to allows error handling and run blocking.  
* **BREAKING REFACTOR**: `channel`, `isDebug`, `logLevel` becomes named optional parameter in 
`DT.initSDK()`.
* **BREAKING REFACTOR**: Type of `logLevel` changes to `DTLogLevel` at `DT.initSDK()`.
* **BREAKING REFACTOR**: Type of `value` changes to `double` at `DTAdReport.reportAd()` and 
`DTAdReport.reportPaidWithCountry()`.
* **BREAKING CHANGE**: `DatatowerAiCoreFlutter` class and its methods are deprecated and will be 
removed on the next minor version.

# 2.0.0

* Initial release.
* Align to DT Android 2.0.4.
* Align to DT iOS 2.0.4.

# 2.0.0-beta1

* Initial Beta.