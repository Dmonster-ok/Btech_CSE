import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime? date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            textBuilder(date == null ? DateFormat.yMMMMd().format(DateTime.now()) : DateFormat.yMMMd().format(date!)),
            ElevatedButton(
               onPressed: () async {
                DateTime? d = await showDatePicker(
                    context: context,
                    initialDate: date ?? DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000));

                if(d != null && date != d){
                  setState(() {
                    date = d;
                  });
                }
              },
              child: Text('Pick Date'),
            ),
          ],
        ),
      ),
    );
  }

  Widget textBuilder(text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 50,
        color: Colors.blue,
      ),
    );
  }
}
