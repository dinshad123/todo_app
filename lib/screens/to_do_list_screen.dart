import 'package:code_hunt_todo_app/avatars.dart';
import 'package:code_hunt_todo_app/screens/todo_box.dart';
import 'package:code_hunt_todo_app/screens/todo_box_edit_screen.dart';
import 'package:flutter/material.dart';

class ToDoListScreen extends StatefulWidget {
  const ToDoListScreen({super.key});

  @override
  State<ToDoListScreen> createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          logo,
          width: 170,
        ),
        titleSpacing: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.deepPurple[300],
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const TodoBoxEditScreen();
            }));
          },
          backgroundColor: Colors.deepPurple[300],
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      body: Column(
        children: [
          Divider(
            thickness: 5,
            height: 3,
            color: Colors.deepPurple[300],
          ),
          Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // crossAxisSpacing: 6.0, // Adjust the spacing between columns
                    // mainAxisSpacing: 6.0,
                  ),
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return const TodoBox();
                  })),
        ],
      ),
    );
  }
}
