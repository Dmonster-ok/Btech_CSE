import 'package:flutter/material.dart';

class P1 extends StatelessWidget {
  const P1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Image.asset('asset/images/bg.png', fit: BoxFit.fill)),
        IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close), color: Colors.white),
      ],
    );
  }
}
