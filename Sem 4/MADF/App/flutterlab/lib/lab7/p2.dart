import 'package:flutter/material.dart';

class P2 extends StatelessWidget {
  const P2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          customText('Hello', family: 'Helvetica'),
          customText('World', family: 'Mojangles'),
        ],
      )
    );
  }
}

Widget customText(String str,{required String family }){
  return Text(
    str,
    style: TextStyle(
        fontSize: 50,
        fontFamily: family,
        color: Colors.deepPurpleAccent,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w900),
  );
}
