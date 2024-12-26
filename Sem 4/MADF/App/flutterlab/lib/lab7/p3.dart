import 'package:flutter/material.dart';

class P3 extends StatelessWidget {
  const P3({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    textController.addListener((){
      print(textController.text);
    });
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: textController,
        ),
      )
    );
  }
}

