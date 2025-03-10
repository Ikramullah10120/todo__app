import 'package:flutter/material.dart';
import 'package:todo__app/screens/constant/colors.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final titleController = TextEditingController();
  final descripController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(elevation: 0, backgroundColor: todoYellow),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // container of added task with designing
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.246,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [todoYellow, Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150),
                ),
              ),
              child: Center(
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),
            //text field container
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    // title text filed
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0,
                            spreadRadius: 10,
                            color: todoYellow,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          controller: titleController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                            hintText: "Title",
                            hintStyle: TextStyle(color: todoYellow),
                            prefixIcon: Icon(
                              size: 20,
                              Icons.title,
                              color: todoYellow,
                            ),
                            prefixIconConstraints: BoxConstraints(
                              maxHeight: 30,
                              minHeight: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    // description textFiled container
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0,
                            spreadRadius: 10,
                            color: todoYellow,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          controller: descripController,
                          maxLines: 2,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                            hintText: "Description",
                            hintStyle: TextStyle(color: todoYellow, height: 3),
                            prefixIcon: Icon(
                              size: 20,
                              Icons.description,
                              color: todoYellow,
                            ),
                            prefixIconConstraints: BoxConstraints(
                              maxHeight: 30,
                              minHeight: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: 300, // You can adjust the width of the container
              height: 60, // You can adjust the height of the container
              decoration: BoxDecoration(
                color: todoYellow, // Background color of the container
                borderRadius: BorderRadius.circular(20), // Rounded corners
              ),
              child: InkWell(
                onTap: () {
                  // Action when button is tapped
                  print("Button Tapped!");
                },
                borderRadius: BorderRadius.circular(
                  12,
                ), // Rounded corners for ink effect
                child: Center(
                  child: Text(
                    "Add", // Button Text
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 18,
                      fontWeight: FontWeight.w700, // Text size
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
