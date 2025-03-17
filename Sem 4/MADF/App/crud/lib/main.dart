import 'package:flutter/material.dart';
import 'dart:math';
import 'db.dart';

void main() {
  runApp(MaterialApp(
    home: DEMO(),
  ));
}

class DEMO extends StatefulWidget {
  const DEMO({super.key});

  @override
  State<DEMO> createState() => _DEMOState();
}

class _DEMOState extends State<DEMO> {
  final DB db = DB();
  List<Map<String, dynamic>> users = [];

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    List<Map<String, dynamic>> data = await db.getAll();
    setState(() {
      users = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Aura Manager'),
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: () async {
              await db.deleteAll();
              load();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (ctx, idx) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Card(
                      elevation: 2,
                      child: ListTile(
                        title: Text('${users[idx]['name']} - Aura: ${users[idx]['aura'] ?? 0}'),
                        leading: IconButton(
                          icon: const Icon(Icons.trending_up, color: Colors.green),
                          onPressed: () async {
                            int currentAura = users[idx]['aura'] as int? ?? 0;
                            int randomIncrease = Random().nextInt(10) + 1;
                            int newAura = currentAura + randomIncrease;
                            await db.update(users[idx]['id'], {aura: newAura});
                            load();
                          },
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () async {
                            await db.delete(users[idx]['id']);
                            load();
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Text('Total Users: ${users.length}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await db.add(users.length + 1, 'abc');
          load();
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}