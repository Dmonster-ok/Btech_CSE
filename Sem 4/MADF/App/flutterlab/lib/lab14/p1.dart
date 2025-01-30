import 'package:flutter/material.dart';

import '../pages/basic_page.dart';

class Home extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 400,
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: 'Enter your name',
              icon: Icon(Icons.person),
              suffixIcon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BasicPage(
                  displayText: nameController.text == '' ? 'No name passed': nameController.text,)));
              }, icon: Icon(Icons.send)),
            ),
          ),
        ),
      ),
    );
  }
}