import 'package:DevQuiz/components/quiz.dart';
import 'package:flutter/material.dart';
import '../components/question_indicator.dart';

class ChallengeScreen extends StatefulWidget {
  @override
  _ChallengeScreenState createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestionIndicator(),
        ),
      ),
      body: Quiz(title: "O que o flutter faz em sua totalidade?"),
    );
  }
}
