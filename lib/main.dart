import 'package:flutter/material.dart';
import 'package:todo_ayee/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_ayee/models/task_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}