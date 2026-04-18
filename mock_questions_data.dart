class MockQuestion {
  final String question;
  final List<String> options;
  final int answerIndex;

  MockQuestion({
    required this.question,
    required this.options,
    required this.answerIndex,
  });
}

List<MockQuestion> mockTestQuestions = [
  MockQuestion(
    question: "What is the square of 12?",
    options: ["124", "144", "154", "164"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "Which is the capital of India?",
    options: ["Mumbai", "Lucknow", "Delhi", "Kanpur"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "If 15% of X = 30, then X = ?",
    options: ["100", "150", "200", "250"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "2 + 5 = ?",
    options: ["5", "6", "7", "8"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "10 - 3 = ?",
    options: ["5", "7", "8", "6"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "4 × 6 = ?",
    options: ["20", "22", "24", "26"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "18 ÷ 3 = ?",
    options: ["5", "6", "7", "8"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "Square of 9?",
    options: ["72", "81", "91", "99"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "Cube of 3?",
    options: ["6", "9", "18", "27"],
    answerIndex: 3,
  ),
  MockQuestion(
    question: "15% of 200?",
    options: ["25", "30", "35", "40"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "Simple interest of ₹1000 at 10% for 1 year?",
    options: ["50", "100", "150", "200"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "Next number: 2,4,6,8,?",
    options: ["9", "10", "11", "12"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "Average of 4,6,8?",
    options: ["5", "6", "7", "8"],
    answerIndex: 1,
  ),

  // 10 done

  MockQuestion(
    question: "50% of 80?",
    options: ["20", "30", "40", "50"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "LCM of 4 and 6?",
    options: ["8", "10", "12", "16"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "HCF of 12 and 18?",
    options: ["3", "6", "9", "12"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "7² = ?",
    options: ["42", "45", "49", "56"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "100 ÷ 4 = ?",
    options: ["20", "22", "25", "30"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "Next: 5,10,20,40,?",
    options: ["60", "70", "80", "90"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "Perimeter of square of side 5?",
    options: ["10", "15", "20", "25"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "Area of square side 6?",
    options: ["30", "36", "42", "48"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "3/4 of 100?",
    options: ["65", "70", "75", "80"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "Next: 1,3,6,10,?",
    options: ["12", "13", "15", "16"],
    answerIndex: 2,
  ),

  // 20 done

  MockQuestion(
    question: "120% of 50?",
    options: ["55", "60", "65", "70"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "If x+5=12 then x=?",
    options: ["5", "6", "7", "8"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "Next: 9,18,27,?",
    options: ["30", "36", "45", "54"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "Sum of first 5 natural numbers?",
    options: ["10", "12", "15", "20"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "40% of 150?",
    options: ["50", "55", "60", "65"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "Square root of 144?",
    options: ["10", "11", "12", "13"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "5³ = ?",
    options: ["25", "75", "100", "125"],
    answerIndex: 3,
  ),
  MockQuestion(
    question: "Next: 2,3,5,7,?",
    options: ["9", "10", "11", "13"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "If 8x=64 then x=?",
    options: ["6", "7", "8", "9"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "Area rectangle 5×8?",
    options: ["30", "35", "40", "45"],
    answerIndex: 2,
  ),

  // 30 done

  MockQuestion(
    question: "Next: 100,90,80,?",
    options: ["60", "70", "75", "65"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "25% of 400?",
    options: ["50", "75", "100", "125"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "1 km = ? meters",
    options: ["100", "500", "1000", "1500"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "3+6×2=?",
    options: ["15", "18", "12", "9"],
    answerIndex: 0,
  ),
  MockQuestion(
    question: "Next: 4,9,16,?",
    options: ["20", "24", "25", "30"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "7×8=?",
    options: ["54", "56", "58", "60"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "Half of 90?",
    options: ["40", "45", "50", "55"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "Next: 11,13,15,?",
    options: ["16", "17", "18", "19"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "10² = ?",
    options: ["50", "80", "100", "120"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "9×9=?",
    options: ["72", "81", "90", "99"],
    answerIndex: 1,
  ),

  // 40 done

  MockQuestion(
    question: "Next: 3,6,12,24,?",
    options: ["30", "36", "48", "60"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "If y-4=10 then y=?",
    options: ["12", "13", "14", "15"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "20% of 90?",
    options: ["15", "18", "20", "25"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "Perimeter rectangle 6×4?",
    options: ["18", "20", "22", "24"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "Next: 1,4,9,16,?",
    options: ["20", "24", "25", "30"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "8³=?",
    options: ["256", "512", "128", "64"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "If 5x=25 then x=?",
    options: ["3", "4", "5", "6"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "Next: 2,5,10,17,?",
    options: ["24", "26", "28", "30"],
    answerIndex: 1,
  ),
  MockQuestion(
    question: "Area triangle ½×10×6?",
    options: ["20", "25", "30", "35"],
    answerIndex: 2,
  ),
  MockQuestion(
    question: "15×4=?",
    options: ["45", "50", "55", "60"],
    answerIndex: 3,
  ),

];
