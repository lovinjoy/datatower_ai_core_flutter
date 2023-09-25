import 'package:datatower_ai_core_flutter/datatower_ai_core_flutter.dart';
import 'package:datatower_ai_core_flutter_example/test/dt_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowAllApiPage extends StatelessWidget {
  const ShowAllApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track Event Customized'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Total number of APIs: ${dtApiMethodHolders.fold(0, (pre, element) => pre + element.methods.length)}"),
            const SizedBox(height: 10,),
            for (var holder in dtApiMethodHolders)
              ...[
                const Divider(),
                Row(
                  children: [
                    Expanded(child: Text(holder.name, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold))),
                    Text(holder.methods.length.toString()),
                  ],
                ),
                const SizedBox(height: 10,),
                for (var method in holder.methods)
                  InkWell(
                    onTap: () => showRunApiDialog(context, holder.name, method),
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Text(method),
                    ),
                  ),
              ],
            const SizedBox(height: 50,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Clipboard.setData(ClipboardData(
            text: dtApiMethodHolders.map((h) {
              return "=====================\n"
                  "${h.name} (num of API: ${h.methods.length})\n"
                  "=====================\n"
                  "${h.methods.join("\n")}";
            }).join("\n\n")
          ));
        },
        child: const Icon(Icons.copy_rounded)
      ),
    );
  }

  void showRunApiDialog(BuildContext context, String className, String methodName) {
    final dtApiMethod = dtApiMethods["${className}_$methodName"];
    if (dtApiMethod == null) return;

    showDialog(
      context: context,
      builder: (context) => RunApiDialog(
        className: className,
        methodName: methodName,
        dtApiMethod: dtApiMethod,
      )
    );
  }
}

class RunApiDialog extends StatefulWidget {
  final String className;
  final String methodName;
  final DtApiMethod dtApiMethod;

  const RunApiDialog({
    super.key,
    required this.className,
    required this.methodName,
    required this.dtApiMethod
  });

  @override
  State<StatefulWidget> createState() => _RunApiDialogState();
}

class _RunApiDialogState extends State<RunApiDialog> {
  late final List<dynamic> orderedParam = List.filled(widget.dtApiMethod.orderedParam.length, null);
  final Map<String, dynamic> namedParam = {};

  @override
  void initState() {
    super.initState();

    for (var (i, type) in widget.dtApiMethod.orderedParam.indexed) {
      orderedParam[i] = getDefaultValue(type, widget.dtApiMethod.orderedParamNames[i]);
    }

    for (var entry in widget.dtApiMethod.namedParam.entries) {
      namedParam[entry.key] = getDefaultValue(entry.value, entry.key);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("${widget.className}\n${widget.methodName}"),
      content: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var (i, _) in widget.dtApiMethod.orderedParam.indexed)
            ...[
              Text(widget.dtApiMethod.orderedParamNames[i].toString(), style: Theme.of(context).textTheme.bodySmall
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(height: 2),
              Text(orderedParam[i].toString()),
              const SizedBox(height: 10),
            ],
          for (var entry in widget.dtApiMethod.namedParam.entries)
            ...[
              Text(entry.key.toString(), style: Theme.of(context).textTheme.bodySmall
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(height: 2),
              Text(namedParam[entry.key].toString()),
              const SizedBox(height: 10),
            ],
        ],
      )),
      actions: [
        TextButton(
          onPressed: () { Navigator.pop(context); },
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: () {
            widget.dtApiMethod.run(orderedParam, namedParam);
            Navigator.pop(context);
          },
          child: const Text("Run"),
        )
      ],
    );
  }

  dynamic getDefaultValue(String type, [String? name]) {
    if (type.startsWith("String")) {
      return "StringParam_$name";
    } else if (type.startsWith("AdTypeDart")) {
      return AdTypeDart.BANNER;
    } else if (type.startsWith("AdPlatformDart")) {
      return AdPlatformDart.ADMOB;
    } else if (type.startsWith("int")) {
      return 10;
    } else if (type.startsWith("bool")) {
      return true;
    } else if (type.startsWith("AdMediationDart")) {
      return AdMediationDart.MAX;
    } else if (type.startsWith("Map<String, Object?>")) {
      return {"TestMap": "123abc", "Key2": 222, "name": name};
    } else if (type.startsWith("List<String>")) {
      return ["TestProp", "Sword", "helicopter", name ?? "name"];
    } else {
      return null;
    }
  }
}