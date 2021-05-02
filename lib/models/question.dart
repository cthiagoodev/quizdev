import 'dart:convert';

import 'package:DevQuiz/models/awnser.dart';

class Question {
  final String title;
  final List<Awnser> awnsers;

  Question({
    required this.title,
    required this.awnsers,
  }) : assert(awnsers.length == 4);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'awnsers': awnsers.map((x) => x.toMap()).toList(),
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      title: map['title'],
      awnsers: List<Awnser>.from(map['awnsers']?.map((x) => Awnser.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source));
}
