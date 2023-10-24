<p align="center">
  <a href="https://datatower.ai/" target="_blank">
    <img alt="DataTower.ai" src="https://dash.datatower.ai/logoWhite_v2.png">
  </a>
</p>

<p align="center">
  <a href="https://pub.dev/packages/datatower_ai_core_flutter" target="_blank">
    <img alt="Flutter" src="https://img.shields.io/pub/v/datatower_ai_core_flutter" style="vertical-align:middle; margin:20px 0px">
  </a>
</p>

---

# DataTower.ai SDK for Flutter

|             | Android |  iOS  |
|:-----------:|:-------:|:-----:|
| **Support** | SDK 19+ | 11.0+ |

## Getting Started

1. Register at [https://datatower.ai/](https://datatower.ai/),
2. Log in and Create your Project,
3. Once created, you will get `appId` and `url` (*Reporting URL*) that will be used later.

## Usage

> **Please refer to our [API doc](https://lovinjoy.feishu.cn/wiki/HWUUwsjmzipcwekXDyEc3Rwyngg)**  

**Functionalities:**  
- Event Tracking  
- Timing Event Tracking  
- User Property  
- Ad Flow Tracking  
- Attribution Integration/Linking

BTW, Remember to call _**DT.initSDK()**_ before any usage of other APIs:
    
    ```dart
    import 'package:datatower_ai_core_flutter/api/dt.dart';
    
    // ...
    
    DT.initSDK(
        appId: "{AppId of your project}",
        url: "{Reporting URL}",
        channel: "",
        isDebug: false,
        logLevel: 2
    );
    
    // ...
    ```
