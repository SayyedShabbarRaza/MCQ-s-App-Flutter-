import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage(this.startScreen,
      {super.key}); //this.switchscreen/QuestionScreen
  final void Function() startScreen; //In Real it is QuestionScreen

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/img.png',
            width: 150,
            height: 200,
            color: const Color.fromARGB(149, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: startScreen, //In Real startScreen is QuestionScreen
            style: TextButton.styleFrom(
              // backgroundColor: Color.fromARGB(255, 171, 10, 10),
              foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
