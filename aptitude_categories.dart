import 'package:flutter/material.dart';
import 'question_practice.dart';

class AptitudeCategoriesScreen extends StatelessWidget {
  const AptitudeCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final categories = [
      {"title": "Quantitative", "icon": Icons.calculate},
      {"title": "Logical", "icon": Icons.psychology},
      {"title": "Verbal", "icon": Icons.record_voice_over},
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Aptitude Categories"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {

            final item = categories[index];

            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => QuestionPracticeScreen(
                      category: item["title"].toString(),
                    ),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.indigo, Colors.blue],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Icon(item["icon"] as IconData,
                        color: Colors.white, size: 35),
                    const SizedBox(width: 15),
                    Text(
                      item["title"].toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward,
                        color: Colors.white),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}