import 'dart:math';
import 'package:flutter/material.dart';
import 'package:placement_cracker/data/question_data.dart';
import 'result_screen.dart';

class QuestionPracticeScreen extends StatefulWidget {
  final String category;

  const QuestionPracticeScreen({super.key, required this.category});

  @override
  State<QuestionPracticeScreen> createState() =>
      _QuestionPracticeScreenState();
}

class _QuestionPracticeScreenState extends State<QuestionPracticeScreen> {

  late List questions;

  int index = 0;
  int score = 0;
  int? selected;

  @override
  void initState() {
    super.initState();

    questions = aptitudeQuestions
        .where((q) => q.category == widget.category)
        .toList();

    questions.shuffle(Random());
  }

  void next() {

    if (selected ==
        questions[index].correctAnswerIndex) {
      score++;
    }

    if (index < questions.length - 1) {
      setState(() {
        index++;
        selected = null;
      });
    } else {
      submit();
    }
  }

  void skip() {
    if (index < questions.length - 1) {
      setState(() {
        index++;
        selected = null;
      });
    } else {
      submit();
    }
  }

  void submit() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => ResultScreen(
          finalScore: score,
          totalQuestions: questions.length,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final q = questions[index];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: Text("${widget.category} Practice"),
        actions: [
          TextButton(
            onPressed: submit,
            child: const Text("SUBMIT",
                style: TextStyle(color: Colors.white)),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            Text(
              "Q ${index + 1}/${questions.length}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(q.questionText,
                  style: const TextStyle(fontSize: 18)),
            ),

            const SizedBox(height: 20),

            ...List.generate(q.options.length, (i) {
              return Card(
                child: RadioListTile(
                  value: i,
                  groupValue: selected,
                  title: Text(q.options[i]),
                  onChanged: (v) {
                    setState(() {
                      selected = v;
                    });
                  },
                ),
              );
            }),

            const Spacer(),

            Row(
              children: [

                Expanded(
                  child: OutlinedButton(
                    onPressed: skip,
                    child: const Text("Skip"),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed:
                        selected == null ? null : next,
                    child: Text(
                      index == questions.length - 1
                          ? "Finish"
                          : "Next",
                    ),
                  ),
                ),

              ],
            )

          ],
        ),
      ),
    );
  }
}