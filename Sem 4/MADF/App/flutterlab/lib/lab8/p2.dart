import 'package:flutter/material.dart';

class P2 extends StatelessWidget {
  const P2({super.key});

  @override
  Widget build(BuildContext context) {
    final img =
        'https://images.pexels.com/photos/4862923/pexels-photo-4862923.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
    return Stack(children: [
      SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Image.network(img, fit: BoxFit.fill)),
      IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
          color: Colors.white),
    ]);
  }
}
