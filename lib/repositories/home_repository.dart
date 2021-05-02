import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:DevQuiz/models/quiz.dart';
import 'package:DevQuiz/models/user.dart';

class HomeRepository {
  Future<User> getUser() async {
    final response = await rootBundle.loadString("lib/database/user.json");
    final user = User.fromJson(response);
    return user;
  }

  Future<List<Quiz>> getQuizzes() async {
    final response = await rootBundle.loadString("lib/database/quizzes.json");
    final list = jsonDecode(response) as List;
    final quizzes = list.map((item) => Quiz.fromMap(item)).toList();
    return quizzes;
  }
}
