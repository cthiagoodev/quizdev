import 'package:flutter/material.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import '../components/awnser.dart';

class Quiz extends StatelessWidget {
  final String title;

  const Quiz({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          Awnser(
            title:
                "Possibilita a criação de aplicativos compilados nativamente.",
          ),
        ],
      ),
    );
  }
}
