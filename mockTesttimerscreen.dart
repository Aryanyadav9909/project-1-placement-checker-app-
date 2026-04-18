import 'package:flutter/material.dart';
import 'package:placement_cracker/screens/mock_test.dart' show MockTestScreen;

class MockTestTimerScreen extends StatelessWidget {
  const MockTestTimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Mock Test Time")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            buildBtn(context, "1 Minute Mock", 60),
            buildBtn(context, "5 Minute Mock", 300),
            buildBtn(context, "15 Minute Mock", 900),
            buildBtn(context, "30 Minute Mock", 1800),

          ],
        ),
      ),
    );
  }

  Widget buildBtn(BuildContext context, String title, int time) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(18)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => MockTestScreen(totalTime: time),
            ),
          );
        },
        child: Text(title, style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}