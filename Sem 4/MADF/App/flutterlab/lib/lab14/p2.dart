import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/Name', arguments: 'Jack Doe');
          },
          child: Text('Go to Page 2'),
        ),
      ),
    );
  }
}


class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    String? displayText = ModalRoute.of(context)!.settings.arguments as String?;
    return Scaffold(
      body: Stack(children: [
        CloseButton(),
        Center(
          child: Text(displayText!,
          style: TextStyle(fontSize: 40, color: Colors.deepPurpleAccent),
          ),
        ),
      ]),
    );
  }
}
