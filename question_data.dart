class AptitudeQuestion {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;
  final String category;

  AptitudeQuestion({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.category,
  });
}

final List<AptitudeQuestion> aptitudeQuestions = [

  // 🔵 Quantitative (25)
  ...List.generate(25, (i) => AptitudeQuestion(
    questionText: "Quant Q${i + 1}: ${i + 2} + ${i + 3} = ?",
    options: [
      "${i + 4}",
      "${i + 5}",
      "${i + 6}",
      "${i + 7}"
    ],
    correctAnswerIndex: 1,
    category: "Quantitative",
  )),

  // 🟢 Logical (25)
  ...List.generate(25, (i) => AptitudeQuestion(
    questionText: "Logical Q${i + 1}: ${i}, ${i+2}, ${i+4}, ?",
    options: [
      "${i + 6}",
      "${i + 7}",
      "${i + 8}",
      "${i + 9}"
    ],
    correctAnswerIndex: 2,
    category: "Logical",
  )),

  // 🟣 Verbal (25)
  ...List.generate(25, (i) => AptitudeQuestion(
    questionText: "Verbal Q${i + 1}: Choose correct word",
    options: [
      "Option A",
      "Option B",
      "Option C",
      "Option D"
    ],
    correctAnswerIndex: 0,
    category: "Verbal",
  )),

];