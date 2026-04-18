import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:placement_cracker/data/mock_questions_data.dart';
import 'result_screen.dart';

class MockTestScreen extends StatefulWidget {

  final int totalTime;

  const MockTestScreen({super.key, required this.totalTime});

  @override
  State<MockTestScreen> createState() => _MockTestScreenState();
}

class _MockTestScreenState extends State<MockTestScreen> {

  late List questions;

  int currentIndex = 0;
  int score = 0;
  int? selectedOption;

  Timer? timer;
  late int timeLeft;

  @override
  void initState() {
    super.initState();

    timeLeft = widget.totalTime;

    List all = List.from(mockTestQuestions);
    all.shuffle(Random());

    int count = getQuestionCount(widget.totalTime);

    questions = all.take(count).toList();

    startTimer();
  }

  int getQuestionCount(int time) {
    if (time == 60) return 5;
    if (time == 300) return 12;
    if (time == 900) return 18;
    if (time == 1800) return 30;
    return 10;
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      setState(() => timeLeft--);
      if (timeLeft <= 0) submit();
    });
  }

  void next() {

    if (selectedOption ==
        questions[currentIndex].answerIndex) {
      score++;
    }

    if (currentIndex < questions.length - 1) {
      setState(() {
        currentIndex++;
        selectedOption = null;
      });
    } else {
      submit();
    }
  }

  void skip() {
    if (currentIndex < questions.length - 1) {
      setState(() {
        currentIndex++;
        selectedOption = null;
      });
    } else {
      submit();
    }
  }

  void submit() {
    timer?.cancel();

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

  String format(int s) {
    int m = s ~/ 60;
    int sec = s % 60;
    return "$m:${sec.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {

    final q = questions[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Mock (${currentIndex + 1}/${questions.length})"),
        actions: [
          TextButton(
            onPressed: submit,
            child: const Text(
              "SUBMIT",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            Text(
              "Time Left : ${format(timeLeft)}",
              style: const TextStyle(
                  fontSize: 22,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Text(q.question,
                style: const TextStyle(fontSize: 20)),

            const SizedBox(height: 20),

            ...List.generate(q.options.length, (i) {
              return Card(
                child: RadioListTile(
                  value: i,
                  groupValue: selectedOption,
                  title: Text(q.options[i]),
                  onChanged: (v) {
                    setState(() {
                      selectedOption = v;
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
                        selectedOption == null ? null : next,
                    child: Text(
                      currentIndex == questions.length - 1
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