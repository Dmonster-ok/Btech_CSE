import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              textBuilder(DateFormat('dd/MM/yyyy').format(DateTime.now())),
              textBuilder(DateFormat('dd-MM-yyyy').format(DateTime.now())),
              textBuilder(DateFormat('dd-MMM-yyyy').format(DateTime.now())),
              textBuilder(DateFormat('dd-MM-yy').format(DateTime.now())),
              textBuilder(DateFormat('dd MMM, yyyy').format(DateTime.now())),
            ],
          ),
        ),
      ),
    );
  }

  Widget textBuilder(text){
    return Text(
      text,
      style: TextStyle(
        fontSize: 50,
        color: Colors.blue,
      ),
    );
  }
}