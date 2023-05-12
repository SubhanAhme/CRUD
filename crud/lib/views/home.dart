import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items:[
        BottomNavigationBarItem(
          icon: Icon(Icons.watch_later_outlined),
          
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.watch),
          
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.watch_later_outlined),
          
        )
      ] ),
    );
  }
}
