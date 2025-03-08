import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);
    debugPrint(data.runtimeType.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
        builder: (context, snapshot) {
          if (snapshot.data!.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            var data = json.decode(snapshot.data.toString());
            debugPrint(data.runtimeType.toString());
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(data[index]['title']),
                    subtitle: Text(data[index]['description']),
                  ),
                );
              },
              itemCount: data.length,
            );
          }
        },
      ),
    );
  }
}
