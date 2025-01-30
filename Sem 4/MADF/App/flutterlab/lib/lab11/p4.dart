import 'package:flutter/material.dart';
import 'package:flutterlab/lab11/data.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool _isGrid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return _isGrid ? _buildCardItem(index): _buildListItem(index);
        },
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      ),
    );
  }


  Widget _buildListItem(int index){
    return ListTile(
      title: Text(users[index]['name']!),
    );
  }

  Widget _buildCardItem(int index) {
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
