import 'package:flutter/material.dart';
import 'package:placement_cracker/screens/mockTesttimerscreen.dart';
import 'aptitude_categories.dart';
import 'interview_tips.dart';
import 'resume_builder.dart';
import 'profile_screen.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4A00E0), Color(0xFF8E2DE2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 15),

              // 🔥 Title
              const Text(
                "Placement Cracker ",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                "Your Success Partner",
                style: TextStyle(color: Colors.white70),
              ),

              const SizedBox(height: 20),

              // 🔥 Grid
              Expanded(
                child: GridView.count(
                  padding: const EdgeInsets.all(15),
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: [
                    buildCard(
                      context,
                      "Aptitude",
                      Icons.menu_book,
                      Colors.orange,
                      const AptitudeCategoriesScreen(),
                    ),

                    buildCard(
                      context,
                      "Interview Tips",
                      Icons.mic,
                      Colors.green,
                      const InterviewTipsScreen(),
                    ),

                    buildCard(
                      context,
                      "Resume Builder",
                      Icons.description,
                      Colors.blue,
                      const ResumeBuilderScreen(),
                    ),

                    buildCard(
                      context,
                      "Mock Test",
                      Icons.quiz,
                      Colors.purple,
                      const MockTestTimerScreen(),
                    ),

                    buildCard(
                      context,
                      "Profile",
                      Icons.person,
                      Colors.red,
                      const ProfileScreen(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    Widget screen,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white24),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 35, color: Colors.white),
            ),

            const SizedBox(height: 12),

            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
