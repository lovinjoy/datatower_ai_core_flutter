<p align="center">
    <a href="https://datatower.ai/" target="_blank">
        <picture>
            <source srcset="https://dash.datatower.ai/logo_v2.png" media="(prefers-color-scheme: dark)">
            <source srcset="https://dash.datatower.ai/logoWhite_v2.png" media="(prefers-color-scheme: light)" >
            <img src="https://dash.datatower.ai/logoWhite_v2.png" alt="DataTower.ai">
        </picture>
    </a>
</p>

<p align="center">
    <a href="https://pub.dev/packages/datatower_ai_core_flutter" target="_blank">
        <img src="https://img.shields.io/pub/v/datatower_ai_core_flutter" alt="Flutter" style="vertical-align:middle; margin:20px 0px">
    </a>
</p>

---

# DataTower.ai SDK for Flutter

|             | Android |  iOS  |
|:-----------:|:-------:|:-----:|
| **Support** | SDK 19+ | 11.0+ |

## Getting Started

1. Register at [https://datatower.ai/][dt_url],
2. Log in and Create your Project,
3. Once created, you will get `appId` and `url` (*Reporting URL*) that will be used later.

## Usage

> **Please refer to our [API doc][doc_url]**  

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

DT.initSDK("{AppId of your project}", "{Reporting URL}",
    channel: "",
    isDebug: false,
    logLevel: 2
);

// ...
```

[dt_url]: https://datatower.ai/
[doc_url]: https://docs.datatower.ai/docs/Flutter_SDK