import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../lab8/p1.dart';
import '../lab8/p2.dart';
import '../lab8/p5.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: ListView(
            padding: EdgeInsets.all(4),
            children: [
              ListTile(
                title: Text('Image'),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => P1()));
                },
              ),
              ListTile(
                title: Text('Url Image'),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => P2()));
                },
              ),
              ListTile(
                title: Text('Stack'),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => P5()));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else if (Platform.isIOS) {
                  exit(0);
                } else {
                }
              },
              icon: Icon(Icons.logout),
            ),
          ],
          title: const Text('TabBar'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'Profile'),
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.self_improvement), text: 'Maditation'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Profile')),
            Center(child: Text('Home')),
            Center(child: Text('Maditation')),
          ],
        ),
      ),
    );
  }
}
