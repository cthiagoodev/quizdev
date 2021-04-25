import 'package:flutter/material.dart';
import 'package:DevQuiz/core/core.dart';
import './custom_pregress_indicator.dart';

class QuestionIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Questão 04",
                style: AppTextStyles.body,
              ),
              Text(
                "de 10",
                style: AppTextStyles.body,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          CustomProgressIndicator(value: 0.7)
        ],
      ),
    );
  }
}
