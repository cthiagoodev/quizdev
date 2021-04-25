import 'package:flutter/material.dart';
import '../screens/splash.dart';
import '../screens/home.dart';
import '../screens/challenge_screen.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      debugShowCheckedModeBanner: false,
      home: ChallengeScreen(),
    );
  }
}
