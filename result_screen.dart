import 'package:flutter/material.dart';
import 'home_dashboard.dart';

class ResultScreen extends StatelessWidget {

  final int finalScore;
  final int totalQuestions;

  const ResultScreen({
    super.key,
    required this.finalScore,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {

    double percent = (finalScore / totalQuestions) * 100;

    return Scaffold(
      appBar: AppBar(title: const Text("Result")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Test Completed 🎉",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 25),

            Text(
              "Score : $finalScore / $totalQuestions",
              style: const TextStyle(
                fontSize: 22,
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Text(
              "Percentage : ${percent.toStringAsFixed(1)} %",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const HomeDashboard()),
                  (route) => false,
                );
              },
              child: const Text("Back To Home"),
            )

          ],
        ),
      ),
    );
  }
}