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
                    Expanded(child: Text(holder.fileName, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold))),
                    Text(holder.methods.length.toString()),
                  ],
                ),
                const SizedBox(height: 10,),
                for (var method in holder.methods)
                  Text(method),
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
                  "${h.fileName} (num of API: ${h.methods.length})\n"
                  "=====================\n"
                  "${h.methods.join("\n")}";
            }).join("\n\n")
          ));
        },
        child: const Icon(Icons.copy_rounded)
      ),
    );
  }

}