import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  // Text(
                  //   ((data['question_index'] as int) + 1).toString(),
                  //   style: const TextStyle(color: Colors.white),
                  // ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                              fontFamily: 'GoogleFont',
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Your Answer:                                         ',
                          style: TextStyle(
                              fontFamily: 'GoogleFont',
                              color: Color.fromARGB(255, 154, 187, 4)),
                        ),
                        Text(
                          data['user_answer'] as String,
                          style: const TextStyle(
                              fontFamily: 'GoogleFont',
                              color: Color.fromARGB(255, 154, 187, 4)),
                        ),
                        const Text(
                          'Correct Answer:                                         ',
                          style: TextStyle(
                              fontFamily: 'GoogleFont',
                              color: Color.fromARGB(255, 61, 195, 77)),
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: const TextStyle(
                              fontFamily: 'GoogleFont',
                              color: Color.fromARGB(255, 10, 198, 26)),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
