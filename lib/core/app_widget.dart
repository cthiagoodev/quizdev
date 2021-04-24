import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../screens/splash.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
