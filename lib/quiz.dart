import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentQuestion = 0;
  int score = 0;

  final List<Map<String, dynamic>> quiz = [
    {
      "title": "Question 1",
      "answers": <Map<String, dynamic>>[
        {"answer": "Answer 1.1", "correct": false},
        {"answer": "Answer 1.2", "correct": false},
        {"answer": "Answer 1.3", "correct": true}
      ]
    },
    {
      "title": "Question 2",
      "answers": <Map<String, dynamic>>[
        {"answer": "Answer 2.1", "correct": true},
        {"answer": "Answer 2.2", "correct": false},
        {"answer": "Answer 2.3", "correct": false}
      ]
    },
    // Add more questions and answers as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: (currentQuestion >= quiz.length)
          ? Center(
              child: Text(
                  'Score: ${(score / quiz.length * 100).toStringAsFixed(2)}%'))
          : ListView(
              children: <Widget>[
                ListTile(
                  title: Center(
                    child: Text(
                      "Question ${currentQuestion + 1}/${quiz.length}",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ...quiz[currentQuestion]['answers'].map((answer) {
                  return ListTile(
                    title: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        padding: EdgeInsets.all(16),
                      ),
                      onPressed: () {
                        setState(() {
                          if (answer['correct'] as bool) {
                            score++;
                          }
                          currentQuestion++;
                        });

                        if (currentQuestion >= quiz.length) {
                          // Handle the end of the quiz here.
                        }
                      },
                      child: Text(answer['answer'].toString(),
                          style: TextStyle(fontSize: 16)),
                    ),
                  );
                }).toList(),
              ],
            ),
    );
  }
}
