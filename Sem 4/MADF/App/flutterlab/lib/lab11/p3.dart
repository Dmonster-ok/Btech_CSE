import 'package:flutter/material.dart';
import 'package:flutterlab/lab11/data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return _buildItem(index);
        },
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      ),
    );
  }

  Widget _buildItem(int index) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(3),
      clipBehavior: Clip.antiAlias,
      child: Stack(fit: StackFit.expand, children: [
        Image.network(
          users[index]['photo']!,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              color: Colors.black,
              child: Text(
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  users[index]['name']!,
                  textAlign: TextAlign.center)
                  ),
            ),
      ]),
    );
  }
}
