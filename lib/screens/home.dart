import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/level_button.dart';
import '../components/quiz_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButton(
                  label: "Fácil",
                ),
                LevelButton(
                  label: "Médio",
                ),
                LevelButton(
                  label: "Difícil",
                ),
                LevelButton(
                  label: "Perito",
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                children: [
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
