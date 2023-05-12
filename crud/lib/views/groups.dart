import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Groups extends StatelessWidget {
  const Groups({super.key});
  

  @override
  Widget build(BuildContext context) {
    var Grouptitle=[
      "FAMILY","FRIEND","CLASS","JAWAN PAKISTAN"

    ];
    var arrColor=[
   Colors.purple,
   Colors.pink,
     Colors.purple,
   Colors.pink,
     Colors.purple,
   Colors.pink,
     Colors.purple,
   Colors.pink,
  
  ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Groups"),
        backgroundColor: Color.fromARGB(255, 188, 110, 42),
      ),
      body: Container(
         margin: EdgeInsets.all(10),
        child: GridView.builder(
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                 color: arrColor[index],
                 
              ),
              child: Center(
                child: Text("${Grouptitle[index]}"),
              ),
             
            );
            
          },
          itemCount: Grouptitle.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
        
      ),
    );
  }
}
