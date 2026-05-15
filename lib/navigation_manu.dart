import 'package:flutter/material.dart';

class NavigationManu extends StatelessWidget {
  const NavigationManu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations:[
        Container(color: Colors.green,),
        Container(color: Colors.blue,),
        Container(color: Colors.deepPurple,),
        Container(color: Colors.orange,),
        ]
         ),
    );
  }
}