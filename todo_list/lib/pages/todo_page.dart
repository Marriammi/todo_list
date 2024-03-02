import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  //text editing controller to get access to what the user typed
  TextEditingController myController = TextEditingController();

  void greetUser() {
    print(myController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "username",
              ),
            ),
            ElevatedButton(
              onPressed: greetUser,
              child: Text("Tap"),
            )
          ],
        ),
      ),
    );
  }
}
