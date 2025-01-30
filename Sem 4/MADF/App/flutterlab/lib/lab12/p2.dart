import 'package:flutter/material.dart';
import 'package:flutterlab/lab12/data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: _buildList(4),
        ),
      ),
    );
  }
}

List<Widget> _buildList(int items) {
  List<Widget> list = [];
  for (int i = 0; i < items; i++) {
    list.add(Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox.fromSize(
        size: Size.fromHeight(400),
        child: Container(
            color: (i % 2 == 0) ? Colors.deepPurple : Colors.deepOrange,
            child: listOrGrid(i)),
      ),
    ));
  }
  return list;
}

Widget listOrGrid(int index) {
  if (index % 2 == 0) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(users[index]['name']!),
          subtitle: Text(users[index]['phoneNumber']!),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(users[index]['photo']!),
          ),
        );
      },
    );
  } else {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: users.length,
      itemBuilder: (context, index) {
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
                      textAlign: TextAlign.center)),
            ),  
          ]),
        );
      },
    );
  }
}
