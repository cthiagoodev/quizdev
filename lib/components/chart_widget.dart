import 'package:flutter/material.dart';
import '../core/app_text_styles.dart';
import '../core/app_colors.dart';

class ChartWidget extends StatefulWidget {
  final double percent;

  ChartWidget({required this.percent});

  @override
  _ChartWidgetState createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  void _initAnimation() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation =
        Tween<double>(begin: 0.0, end: widget.percent).animate(_controller!);
    _controller!.forward();
  }

  @override
  void initState() {
    super.initState();
    _initAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: AnimatedBuilder(
        animation: _animation!,
        builder: (context, _) => Stack(
          children: [
            Center(
              child: Container(
                width: 80,
                height: 80,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  value: _animation!.value,
                  backgroundColor: AppColors.chartSecondary,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                ),
              ),
            ),
            Center(
              child: Text(
                "${(_animation!.value * 100).toInt()}%",
                style: AppTextStyles.heading,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
