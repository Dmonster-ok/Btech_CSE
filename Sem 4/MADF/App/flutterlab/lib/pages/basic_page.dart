import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final String? displayText;
  const BasicPage({super.key, required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        CloseButton(),
        Center(
          child: Text(displayText!,
          style: TextStyle(fontSize: 40, color: Colors.deepPurpleAccent),
          ),
        ),
      ]),
    );
  }
}
