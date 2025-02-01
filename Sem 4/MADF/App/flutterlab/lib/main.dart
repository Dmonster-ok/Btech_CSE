import 'package:flutter/material.dart';

import 'crud/crud.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   initialRoute: '/',
    //   routes: {
    //     '/': (context) => Page1(),
    //     '/Name': (context) => Page2(),
    //   },
    // );
  }
}
