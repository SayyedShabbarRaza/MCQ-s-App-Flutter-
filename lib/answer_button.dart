import 'package:flutter/material.dart';
// import 'package:second_app/data/question.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});
  final String answerText;
  final onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 20,
        )),
        child: Text(
          answerText,
          style: const TextStyle(
              fontWeight: FontWeight.w900, color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    );
  }
}
