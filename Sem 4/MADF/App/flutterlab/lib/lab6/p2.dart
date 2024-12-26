import 'package:flutter/material.dart';

class P2 extends StatelessWidget {
  const P2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(
          color: Colors.deepPurple,
        )),
        Expanded(child: Container(
          color: Colors.deepOrange,
        )),
        Expanded(child: Container(
          color: Colors.blueAccent,
        )),
      ],
    );
  }
}
