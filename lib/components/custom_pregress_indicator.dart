import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  final double value;

  CustomProgressIndicator({required this.value});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
    );
  }
}
