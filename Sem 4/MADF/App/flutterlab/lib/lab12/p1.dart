import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: _buildList(20),
        ),
      ),
    );
  }
}

List<Widget> _buildList(int items) {
  List<Widget> list = [];
  for (int i = 0; i < items; i++) {
    list.add(
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox.fromSize(
          size: Size.fromHeight(400),
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
  return list;
}
