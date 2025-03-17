import 'package:flutter/material.dart';
import 'package:sqflite_crud/db.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Db _db = Db();

  List<dynamic> users = [];

  Future<void> load() async {
    users = await _db.getAll();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sqf crud',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sqf crud'),
          actions: [
            IconButton(
                onPressed: () async {
                  await _db.add('Something', 50);
                  load();
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, idx) {
            return ListTile(
              title: Text('$idx ${users[idx]['name']}'),
              subtitle: Text('${users[idx]['age']}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () async {
                        await _db.update(users[idx]['id'], users[idx]['name'],
                            users[idx]['age'] + 10);
                        load();
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () async {
                        await _db.delete(users[idx]['id']);
                        load();
                      },
                      icon: Icon(Icons.delete))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
