import 'package:code_hunt_todo_app/screens/login_screen.dart';
import 'package:code_hunt_todo_app/screens/sign_up_screen.dart';
import 'package:code_hunt_todo_app/screens/splash_screen.dart';
import 'package:code_hunt_todo_app/screens/to_do_list_screen.dart';
import 'package:code_hunt_todo_app/screens/todo_box_edit_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
