import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dataconstant.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();

  addNewContact(context) {
    setState(() {
      Navigator.pop(context);
      DataConstants.contacts.add({
        "name": name.text,
        "userName": "codewithowais",
        "number": number.text,
      });
      name.clear();
    });
    print(DataConstants.contacts);
  }

  editContact(context, index) {
    setState(() {
      Navigator.pop(context);
      DataConstants.contacts[index] = {
        "name": name.text,
        "userName": "codewithowais",
        "number": number.text,
      };
      name.clear();
    });
    print(DataConstants.contacts);
  }

  deletUser(context, i) {
    setState(() {
      Navigator.pop(context);

      DataConstants.contacts.removeAt(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts",style: TextStyle(color: Colors.black87),),
     
     
      ),
      body: Container(
        child: ListView.builder(
          itemCount: DataConstants.contacts.length,
          itemBuilder: (context, i) {
            return Container(
              margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 234, 231, 231),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                     
                  
                    )
                  ]),
              child: ListTile(
                  title: Text(
                    "${DataConstants.contacts[i]['name']}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("${DataConstants.contacts[i]['number']}", style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          name.text = DataConstants.contacts[i]['name'];
                          showDialog(
                            // barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("My title"),
                                content: Container(
                                  height: 130,
                                  child: Column(
                                    children: [
                                      TextField(
                                        controller: name,
                                        obscureText: false,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Contact Name',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextField(
                                        controller: number,
                                        obscureText: false,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Contact Number',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      editContact(context, i);
                                    },
                                  )
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          name.text = DataConstants.contacts[i]['name'];
                          showDialog(
                            // barrierDismissible: true,
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                
                                title: const Text("Delete"),
                                content: Container(
                                    height: 40,
                                    child: Text("Are you really want to delete?")),
                                actions: [
                                  TextButton(
                                    child: const Text("Yes"),
                                    onPressed: () {
                                      deletUser(context, i);
                                    },
                                  ),
                                  TextButton(onPressed: (){
                                    
                                  }, child: Text("NO"))
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  )),
                  
            );
            
          },
          
        ),
            

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            // barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("My title"),
                content: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: name,
                        obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Contact Name',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: number,
                        obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Contact Number',
                        ),
                      )
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      addNewContact(context);
                    },
                   
                  )
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add,),
      ),
    );
  }
}
