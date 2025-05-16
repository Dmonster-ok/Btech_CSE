import 'dart:ui';

import 'package:flutter/material.dart';

class P1 extends StatelessWidget {
  const P1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Image.asset('asset/images/bg.png', fit: BoxFit.fill)),
      Center(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
                width: 720,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black26),
                padding: EdgeInsets.all(20),
                child: Text(
                  'Happy Birthday\nForget about the past, you can’t change it. Forget about the future, you can’t predict it. Forget about the present, I didn’t get you one.',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
          ),
        ),
      ),
    ]);
  }
}
