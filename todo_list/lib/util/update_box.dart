// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_list/util/my_buttons.dart';

class UpdateBox extends StatelessWidget {
  final mycontroller;

  VoidCallback onUpdate;
  VoidCallback onCancel;

  UpdateBox({
    super.key,
    required this.mycontroller,
    required this.onUpdate,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Color.fromARGB(255, 229, 221, 145),
        content: Container(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //user input
              TextField(
                controller: mycontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "renaim your task",
                ),
              ),
              //button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //save button
                  MyButton(text: "Update", onPressed: onUpdate),
                  const SizedBox(width: 10),
                  //cancel button
                  MyButton(text: "Cancel", onPressed: onCancel)
                ],
              )
            ],
          ),
        ));
  }
}
