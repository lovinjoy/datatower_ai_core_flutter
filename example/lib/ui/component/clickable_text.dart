import 'package:flutter/material.dart';

class ClickableText extends StatefulWidget {
  final String title;
  final String initText;
  final Future<String?> Function() onClick;

  const ClickableText({
    super.key,
    required this.title,
    this.initText = "Click to update the value",
    required this.onClick,
  });

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<ClickableText> {
  late String displayedText = widget.initText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => widget.onClick().then((value) => value == null
            ? null
            : setState(() {
                displayedText = value.toString();
              })),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                displayedText,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.outline),
              ),
            ],
          ),
        ));
  }
}
