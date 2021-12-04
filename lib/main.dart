import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo/views/home_view.dart';
import 'package:todo/views/create_todo_view.dart';
import 'package:todo/views/end_page_view.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Colors.blueGrey[100],
      ),
      home: const EndPageView(),
    );
  }
}
