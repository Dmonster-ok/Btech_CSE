import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(onPressed: (){
          showModalBottomSheet(context: context, builder: (context){
            return Container(
              height: 200,
              color: Colors.amber,
              child: Center(
                child: Text('Hello'),
              ),
            );
          },
          showDragHandle: true,
          );
        }, child: Text('Press me')),
      ),
    );
  }
}