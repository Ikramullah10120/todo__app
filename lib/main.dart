import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo__app/screens/constant/colors.dart';
import 'package:todo__app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // fix the direction of the app
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'MondayRain',
        primarySwatch: Colors.blue,
        primaryColor: todoYellow,
      ),
      home: const HomeScreen(),
    );
  }
}
