import 'dart:io';

import 'package:datatower_ai_core_flutter/api/dt.dart';
import 'package:datatower_ai_core_flutter_example/bean/sdk_info.dart';
import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<InitPage> {
  String appId = "dt_4b436e8b14d41d70";
  String url = "https://test.roiquery.com";
  bool _isDebug = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FractionallySizedBox(
              widthFactor: 0.6,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Init DT SDK",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.primary),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: TextEditingController()..text = appId,
                    decoration: const InputDecoration(
                        label: Text("App id"), border: OutlineInputBorder()),
                    onChanged: (str) => appId = str,
                    maxLines: null,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: TextEditingController()..text = url,
                    decoration: const InputDecoration(
                        label: Text("Server url"),
                        border: OutlineInputBorder()),
                    onChanged: (str) => url = str,
                    maxLines: null,
                  ),
                  Row(children: [
                    const Text("Debug"),
                    Checkbox(
                        value: _isDebug,
                        onChanged: (_) => setState(() => _isDebug = !_isDebug)),
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (appId.isNotEmpty && url.isNotEmpty) {
                          sdkInfo = SdkInfo(appId, url);
                          var channel = "1";
                          if (Platform.isIOS) {
                            channel = "2";
                          }
                          DT.initSDK(appId, url, channel, _isDebug, 1);
                          Navigator.of(context).pushNamed("/home");
                        }
                      },
                      child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: const Center(child: Text("Initialize")))),
                ],
              ))),
    );
  }
}
