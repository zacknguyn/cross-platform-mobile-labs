import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
      questionText: "1 + 1 = 2",
      questionAnswer: true,
    ),
    Question(
      questionText: "Vietnam is in Asia",
      questionAnswer: true,
    ),
    Question(
      questionText: "Japan is in Europe",
      questionAnswer: false,
    ),
    Question(
      questionText: "1 + 3 = 5",
      questionAnswer: false,
    ),
    Question(
      questionText: "Flutter is a framework for building mobile apps",
      questionAnswer: true,
    ),
    Question(
      questionText: "Dart is a programming language",
      questionAnswer: true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
