import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class P5 extends StatefulWidget {
  const P5({super.key});

  @override
  State<P5> createState() => _P5State();
}

class _P5State extends State<P5> {
  int rolladise() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.black26),
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          rolladise().toString(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        TextButton(
                            onPressed: () {
                              setState(() {});
                            },
                            child: Text('Roll')),
                      ],
                    ),
                  )),
            ),
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
            color: Colors.white),
      ]),
    );
  }
}
