import 'package:flutter/material.dart';
import 'package:todo__app/screens/add_task_screen.dart';
import 'package:todo__app/screens/constant/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Todo App"), backgroundColor: todoYellow),

      body: Container(child: Center(child: Text("welcome to todo app"))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTaskScreen()),
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: todoYellow,

        child: Icon(Icons.add),
      ),
    );
  }
}
