import 'package:flutter/material.dart';

class P3 extends StatelessWidget {
  const P3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                  child: Container(
                color: Colors.deepPurple,
              )),
              Expanded(
                  child: Container(
                color: Colors.deepOrange,
              )),
              Expanded(
                  child: Container(
                color: Colors.blueAccent,
              )),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.deepPurpleAccent,
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.deepOrangeAccent,
                  )),
              Expanded(
                  child: Container(
                color: Colors.lightBlueAccent,
              )),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Container(
                color: Colors.deepPurple,
              )),
              Expanded(
                flex: 3,
                  child: Container(
                color: Colors.deepOrange,
              )),
              Expanded(
                flex: 2,
                  child: Container(
                color: Colors.blueAccent,
              )),
            ],
          ),
        )
      ],
    );
  }
}
