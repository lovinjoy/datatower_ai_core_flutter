// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// DtApiMethodsGenerator
// **************************************************************************

import 'package:datatower_ai_core_flutter/api/dt.dart';

const List<DtApiMethodHolder> dtApiMethodHolders = [dtApiMethods4DT];

const DtApiMethodHolder dtApiMethods4DT = DtApiMethodHolder("DT", ["initSDK"]);

class DtApiMethodHolder {
  final String name;
  final Iterable<String> methods;

  const DtApiMethodHolder(this.name, this.methods);
}

class DtApiMethod {
  final String name;
  final List<String> orderedParamNames;
  final List<String> orderedParam;
  final Map<String, String> namedParam;
  final void Function(List<dynamic> ordered, Map<String, dynamic> named) run;

  const DtApiMethod({
    required this.name,
    required this.orderedParamNames,
    required this.orderedParam,
    required this.namedParam,
    required this.run,
  });
}

final Map<String, DtApiMethod> dtApiMethods = {
  "DT_initSDK": DtApiMethod(
      name: "DT",
      orderedParamNames: ["appId", "url"],
      orderedParam: ["String", "String"],
      namedParam: {"channel": "String", "isDebug": "bool", "logLevel": "int"},
      run: (ordered, named) {
        DT.initSDK(ordered[0], ordered[1],
            channel: named["channel"],
            isDebug: named["isDebug"],
            logLevel: named["logLevel"]);
      })
};
