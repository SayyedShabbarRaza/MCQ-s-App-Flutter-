import 'package:flutter/material.dart';
import 'package:second_app/data/question.dart';
import 'package:second_app/questions_summary.dart';
import 'package:second_app/quiz.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.choosenAnswer, this.onstart,
      {super.key}); //this.selectedanswers , restartQuiz
  final List<String> choosenAnswer;
  final void Function() onstart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': question[i].text,
          'correct_answer': question[i].answers[0],
          'user_answer': choosenAnswer[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = question.length;
    final numCorrectQuestioins = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestioins out of $numTotalQuestions questions correctly!',
              style: const TextStyle(
                  fontFamily: 'GoogleFont',
                  color: Color.fromARGB(255, 198, 148, 10)),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            TextButton(
              onPressed: onstart,
              child: const Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.lightBlueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
