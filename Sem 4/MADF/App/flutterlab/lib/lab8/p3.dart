import 'package:flutter/material.dart';

class P3 extends StatelessWidget {
  const P3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Image.asset('asset/images/bg.png',fit: BoxFit.fill)),
          Center(
            child: Container(
              color: Colors.black87,
              padding: EdgeInsets.all(20),
              child: Text('Hello World', style: TextStyle(fontSize: 30, color: Colors.white),)),
          )]
    );
  }
}