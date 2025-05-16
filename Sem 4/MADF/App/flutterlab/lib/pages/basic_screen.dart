import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  final String? displayText;
  const BasicScreen({super.key, required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        displayText!,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
