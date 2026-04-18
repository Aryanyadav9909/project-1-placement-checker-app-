import 'package:flutter/material.dart';

class InterviewTipsScreen extends StatefulWidget {
  const InterviewTipsScreen({super.key});

  @override
  State<InterviewTipsScreen> createState() => _InterviewTipsScreenState();
}

class _InterviewTipsScreenState extends State<InterviewTipsScreen> {

  final Map<String, List<String>> tipsData = {

    "HR Interview Tips": [
      "Be confident while speaking",
      "Maintain proper eye contact",
      "Practice self introduction daily",
      "Prepare strengths & weaknesses",
      "Research about company before interview",
    ],

    "Technical Interview Tips": [
      "Revise core subjects",
      "Explain projects clearly",
      "Practice coding questions daily",
      "Focus on logic building",
      "Be honest if you don’t know answer",
    ],

    "Body Language Tips": [
      "Sit straight",
      "Do not cross arms",
      "Give a gentle smile",
      "Avoid unnecessary hand movement",
    ],
 
   "Professional Appearance Tips": [
     "Wear clean and well-ironed formal clothes",
     "Choose light and decent colors for interview dress",
     "Maintain proper personal hygiene",
     "Keep your shoes polished and neat",
     "Avoid strong perfume or deodorant",
     "Carry a professional file or folder confidently",
],
     "Self Introduction Tips": [
  "Start with greeting and thank interviewer",
  "Tell your name clearly",
  "Mention your current qualification",
  "Briefly explain your skills",
  "Talk about your projects in short",
  "Share your career goals confidently",
  "Keep introduction within 60–90 seconds",
  "Practice introduction in front of mirror",
],

     "Confidence Building Tips": [
  "Prepare interview questions in advance",
  "Do mock interview practice",
  "Improve daily communication skills",
  "Believe in your preparation",
  "Avoid negative thinking before interview",
  "Stay calm and take deep breaths",
  "Focus on your strengths",
  "Keep positive body posture",
],

     "Resume Tips": [
  "Keep resume simple and clean",
  "Highlight important skills",
  "Mention real projects only",
  "Avoid spelling mistakes",
  "Use bullet points for clarity",
  "Carry multiple resume copies",
  "Explain every point in resume confidently",
  "Update resume before every interview",
],

      "Fresher Interview Tips": [
  "Focus more on academic concepts",
  "Explain internship experience clearly",
  "Show willingness to learn",
  "Do not panic if you don’t know answer",
  "Be honest and polite",
  "Talk about teamwork experience",
  "Maintain positive attitude",
  "Show enthusiasm for job role",
],

    "Interview Day Tips": [
  "Reach interview location early",
  "Carry all required documents",
  "Keep phone on silent mode",
  "Listen questions carefully",
  "Answer to the point",
  "Thank interviewer before leaving",
  "Stay confident till last moment",
  "Do not argue unnecessarily",
],
    "Communication Tips": [
      "Speak slowly and clearly",
      "Avoid filler words like umm",
      "Listen carefully before answering",
      "Improve English speaking practice",
    ],

  };

  List<bool> isOpen = [];

  @override
  void initState() {
    super.initState();
    isOpen = List.generate(tipsData.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    final headings = tipsData.keys.toList();

    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text("Interview Tips"),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: headings.length,
        itemBuilder: (context, index) {

          return Container(
            margin: const EdgeInsets.only(bottom: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 8,
                )
              ],
            ),
            child: Column(
              children: [

                // 👉 Heading
                ListTile(
                  title: Text(
                    headings[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  trailing: Icon(
                    isOpen[index]
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                  onTap: () {
                    setState(() {
                      isOpen[index] = !isOpen[index];
                    });
                  },
                ),

                // 👉 Tips List
                if (isOpen[index])
                  Column(
                    children: tipsData[headings[index]]!
                        .map(
                          (tip) => ListTile(
                            leading: const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            ),
                            title: Text(tip),
                          ),
                        )
                        .toList(),
                  ),

              ],
            ),
          );
        },
      ),
    );
  }
}