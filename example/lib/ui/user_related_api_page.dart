import 'dart:convert';

import 'package:datatower_ai_core_flutter/api/dt_analytics.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UserRelatedApiPage extends StatefulWidget {
  const UserRelatedApiPage({super.key});

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<UserRelatedApiPage> {
  _UraItem selectedItem = _items.first;
  String properties = "";

  String errorText = "";

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 20;

    return Scaffold(
        appBar: AppBar(
          title: const Text("User Related API"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              DropdownMenu<_UraItem>(
                width: width,
                initialSelection: selectedItem,
                onSelected: (it) =>
                    it == null ? null : setState(() => selectedItem = it),
                dropdownMenuEntries: [
                  ..._items
                      .map((e) => DropdownMenuEntry(value: e, label: e.name))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              if (selectedItem.name != "userDelete")
                TextField(
                  controller: TextEditingController()..text = properties,
                  decoration: InputDecoration(
                      label: const Text("Properties"),
                      border: const OutlineInputBorder(),
                      helperText: selectedItem.name == "userUnset"
                          ? "*String list: [\"example\"]"
                          : "*Json: {\"key\": \"value\"}",
                      helperStyle: errorText.isNotEmpty
                          ? TextStyle(
                              color: Theme.of(context).colorScheme.error)
                          : null),
                  onChanged: (str) => properties = str,
                  maxLines: null,
                ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() => errorText = "");
                    try {
                      selectedItem.onRun(properties);
                      Fluttertoast.showToast(msg: "Sent!");
                    } on FormatException catch (e) {
                      setState(() => errorText =
                          "${e.message} (at character ${e.offset})\n"
                              "${e.source}\n"
                              "${" " * (e.offset ?? 0 - 1)}^");
                    } on Error catch (e) {
                      setState(() => errorText = "$e");
                    }
                  },
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: const Center(child: Text("RUN")))),
              const SizedBox(
                height: 50,
              ),
              if (errorText.isNotEmpty)
                Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Theme.of(context).colorScheme.error),
                    color: Theme.of(context).colorScheme.errorContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    errorText,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onErrorContainer),
                  ),
                )
            ],
          ),
        ));
  }
}

class _UraItem {
  final String name;
  final void Function(String param) onRun;

  const _UraItem({
    required this.name,
    required this.onRun,
  });
}

final List<_UraItem> _items = [
  _UraItem(
      name: "userSet",
      onRun: (p) => DTAnalytics.userSet(p.isNotEmpty ? jsonDecode(p) : {})),
  _UraItem(
      name: "userSetOnce",
      onRun: (p) => DTAnalytics.userSetOnce(p.isNotEmpty ? jsonDecode(p) : {})),
  _UraItem(
      name: "userAdd",
      onRun: (p) => DTAnalytics.userAdd(p.isNotEmpty ? jsonDecode(p) : {})),
  _UraItem(
      name: "userUnset",
      onRun: (p) {
        final lst = jsonDecode(p);
        List<String>? param;
        if (lst is List<dynamic>) {
          param = lst.map((e) => e.toString()).toList();
          DTAnalytics.userUnset(p.isEmpty ? [] : param);
        } else {
          param = ((lst as Map).values.first as List<dynamic>)
              .map((e) => e.toString())
              .toList();
        }
        DTAnalytics.userUnset(p.isEmpty ? [] : param);
      }),
  _UraItem(name: "userDelete", onRun: (p) => DTAnalytics.userDelete()),
  _UraItem(
      name: "userAppend",
      onRun: (p) => DTAnalytics.userAppend(p.isNotEmpty ? jsonDecode(p) : {})),
  _UraItem(
      name: "userUniqAppend",
      onRun: (p) =>
          DTAnalytics.userUniqAppend(p.isNotEmpty ? jsonDecode(p) : {})),
];
