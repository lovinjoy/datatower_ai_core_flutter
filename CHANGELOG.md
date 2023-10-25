# 2.0.1

> &#x26A0; this version has **BREAKING CHANGE**

* Added in-code doc for all APIs.
* Upgraded DT Android to 2.0.7.
* Upgraded DT iOS to 2.0.6.
* Restrict DTAnalytics.userAppend, DTAnalytics.userUniqAppend to only accept List as value in 
JsonMap.  
* Changes return type for all of functions to Future, to allows error handling and run blocking.  
* **BREAKING REFACTOR**: `channel`, `isDebug`, `logLevel` becomes named optional parameter in 
`DT.initSDK()`.
* **BREAKING REFACTOR**: Type of `logLevel` changes to `DTLogLevel` in `DT.initSDK()`.
* **BREAKING CHANGE**: `DatatowerAiCoreFlutter` class and its methods are deprecated and will be 
removed on later version.

# 2.0.0

* Initial release.
* Align to DT Android 2.0.4.
* Align to DT iOS 2.0.4.

# 2.0.0-beta1

* Initial Beta.