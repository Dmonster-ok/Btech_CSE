import 'package:flutter/material.dart';

import '../pages/basic_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(children: 
        [
          ListTile(
            title: Text('Page 1'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BasicPage(displayText: 'Page 1')));
            },
          ),
          ListTile(
            title: Text('Page 2'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BasicPage(displayText: 'Page 2')));
            },
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}