import 'package:flutter/foundation.dart';
import 'package:DevQuiz/models/user.dart';
import 'package:DevQuiz/models/quiz.dart';
import 'package:DevQuiz/repositories/home_repository.dart';

enum HomeState { success, loading, error, empty }

class HomeController {
  User? user;
  List<Quiz>? quizzes;
  ValueNotifier<HomeState> stateNotifier = ValueNotifier(HomeState.empty);
  final repository = HomeRepository();

  HomeState get state {
    return stateNotifier.value;
  }

  set state(HomeState value) {
    stateNotifier.value = value;
  }

  void getUser() async {
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }
}
