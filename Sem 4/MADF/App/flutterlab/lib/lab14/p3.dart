import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: 500,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your name',
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        ).then((value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BirthDay(
                                name: nameController.text == ''
                                    ? 'Anonymous'
                                    : nameController.text,
                                date: value == null ? DateTime.now() : value,
                              ),
                            ),
                          );
                        });
                      },
                      child: Text('Pick a date'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BirthDay extends StatelessWidget {
  final String? name;
  final DateTime? date;
  const BirthDay({super.key, required this.name, required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hello $name',
              style: TextStyle(fontSize: 40, color: Colors.deepPurpleAccent),
            ),
            Text(
              'Happy Birthday to you\nYou just turned ${DateTime.now().difference(date!).inDays ~/ 365}',
              style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
