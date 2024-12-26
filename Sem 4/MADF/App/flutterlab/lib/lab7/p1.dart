import 'package:flutter/material.dart';

class P1 extends StatelessWidget {
  const P1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello World',
        style: TextStyle(
            fontSize: 50,
            color: Colors.deepPurpleAccent,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900),
      ),
    );
  }
}
