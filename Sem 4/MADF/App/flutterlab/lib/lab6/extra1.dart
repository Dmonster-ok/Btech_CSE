import 'package:flutter/material.dart';

class Extra1 extends StatelessWidget {
  const Extra1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.red,
          )),
          Expanded(
              child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                  )),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
