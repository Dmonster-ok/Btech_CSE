import 'package:flutter/material.dart';


class P1 extends StatelessWidget {
  const P1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
