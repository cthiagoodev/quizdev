import 'package:flutter/cupertino.dart';

class ChallengeController {
  int correctQuestions = 0;
  final currentPageNotifier = ValueNotifier<int>(1);

  int get currentPage {
    return currentPageNotifier.value;
  }

  set currentPage(int value) {
    currentPageNotifier.value = value;
  }
}
