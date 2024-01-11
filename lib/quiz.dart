import 'package:flutter/material.dart';
import 'package:second_app/results_screen.dart';
import 'package:second_app/start_screen.dart';
import 'package:second_app/questions_screen.dart';
import 'package:second_app/data/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;
  @override
  void initState() {
    activeScreen = Firstpage(switchScreen);
    super.initState();
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = QuestionScreen(chooseAnswer);
    });
  }

  void chooseAnswer(String answer) {
    //answer will come from where it is called
    selectedAnswers.add(answer);
    // ignore: unrelated_type_equality_checks
    if (selectedAnswers.length == question.length) {
      //question.length=6
      setState(() {
        activeScreen = ResultScreen(
            selectedAnswers, restartQuiz); //selectedanswers=['',''];
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(chooseAnswer);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 56, 0, 134),
        body: Container(
          child: activeScreen,
        ),
      ),
    );
  }
}
