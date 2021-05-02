import 'package:flutter/material.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/models/question.dart';
import 'awnser_widget.dart';

class QuizWidget extends StatefulWidget {
  final Question question;
  final ValueChanged<bool> onSelected;

  const QuizWidget({
    required this.question,
    required this.onSelected,
  });

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;
  bool isDisable = false;

  @override
  Widget build(BuildContext context) {
    final awnsers = widget.question.awnsers;

    return Container(
      child: Column(
        children: [
          SizedBox(height: 64),
          Text(
            widget.question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          for (int i = 0; i < awnsers.length; i++)
            AwnserWidget(
              awnser: awnsers[i],
              isSelected: indexSelected == i,
              disable: isDisable,
              onTap: (value) {
                setState(() {
                  indexSelected = i;
                  isDisable = true;

                  Future.delayed(Duration(milliseconds: 600)).then((_) {
                    widget.onSelected(value);
                  });
                });
              },
            ),
        ],
      ),
    );
  }
}
