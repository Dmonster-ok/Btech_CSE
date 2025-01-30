import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  final String title;
  final String action;
  final Function() onPressed;
  final List<Widget> children;

  const AppDialog({
    super.key,
    required this.title,
    required this.action,
    required this.onPressed,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            onPressed();
            Navigator.pop(context);
          },
          child: Text(action),
        ),
      ],
    );
  }
}
