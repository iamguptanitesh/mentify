import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/home/quiz/final_screen.dart';
import 'package:flutter_app/theme/my_colors.dart';
import 'package:http/http.dart' as http;
import 'package:html_unescape/html_unescape.dart';
import 'quiz_option.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late List questions;
  late String currentTitle = "Test";
  late String currentCorrectAnswer;
  List<dynamic> currentAnswers = [];
  late int corrects;
  late int currentQuestion;
  late int selectedAnswer;
  late DateTime now;

  @override
  void initState() {
    now = DateTime.now();
    corrects = 0;
    currentQuestion = 0;
    questions = [];
    selectedAnswer = 0;
    getQuestions();
    super.initState();
  }

  void getQuestions() async {
    print(5 / 8);
    // final response = await http
    //     .get(Uri.parse('https://opentdb.com/api.php?amount=10&category=18'));
    // print("-------------------");
    // print(json.decode(response.body));

    // Map data = json.decode(response.body);

    Map data = {
      "response_code": 0,
      "results": [
        {
          "type": "multiple",
          "question": "How have you been feeling emotionally lately?",
          "correct_answer": "My Emotions are Quick",
          "incorrect_answers": [
            "My Emotions are'nt Quick",
            "I am emotionally uncontrolled"
          ]
        },
        {
          "type": "multiple",
          "question":
              "Have you been experiencing any persistent feelings of sadness or hopelessness?",
          "correct_answer": "I am Optimistic",
          "incorrect_answers": ["I always feel hopeless"]
        },
        {
          "type": "multiple",
          "question":
              "Have you noticed any changes in your sleeping or eating habits?",
          "correct_answer": "I maintain my habits properly",
          "incorrect_answers": [
            "My sleep timings or eating habits are inconsistent"
          ]
        },
        {
          "type": "multiple",
          "question":
              "Have you been feeling more anxious or on edge than usual?",
          "correct_answer": "No",
          "incorrect_answers": ["Yes"]
        },
        {
          "type": "multiple",
          "question":
              "Have you been having any negative or intrusive thoughts that have been difficult to shake off?",
          "correct_answer": "No, I dont",
          "incorrect_answers": [
            "I have few",
            "I always feel low to my thoughts"
          ]
        },
        {
          "type": "multiple",
          "question":
              "Have you been struggling to concentrate or make decisions?",
          "correct_answer": "I strongly believe my decisions",
          "incorrect_answers": [
            "I always confused with my decisions",
            "I always depends on somebody to take decisions"
          ]
        },
        {
          "type": "multiple",
          "question":
              "Have you been feeling disconnected or isolated from others?",
          "correct_answer": "No",
          "incorrect_answers": ["Sometimes"]
        },
        {
          "type": "multiple",
          "question":
              "Have you experienced any traumatic or stressful events recently?",
          "correct_answer": "I am perfectly alright",
          "incorrect_answers": [
            "I do",
          ]
        }
      ]
    };

    List answers = [data['results'][0]['correct_answer']] +
        data['results'][0]['incorrect_answers'];
    setState(() {
      questions = data['results'];
      currentTitle = data['results'][0]['question'];
      currentCorrectAnswer = data['results'][0]['correct_answer'];
      currentAnswers = answers..shuffle();
    });
  }

  void verifyAndNext(BuildContext context) {
    String textSelectAnswer = currentAnswers[selectedAnswer];
    if (textSelectAnswer == currentCorrectAnswer) {
      setState(() {
        corrects++;
      });
    }
    nextQuestion(context);
  }

  void nextQuestion(BuildContext context) {
    int actualQuestion = currentQuestion;
    if (actualQuestion + 1 < questions.length) {
      List answers = [questions[actualQuestion + 1]['correct_answer']] +
          questions[actualQuestion + 1]['incorrect_answers'];
      setState(() {
        currentQuestion++;
        currentTitle = questions[actualQuestion + 1]['question'];
        currentCorrectAnswer = questions[actualQuestion + 1]['correct_answer'];
        currentAnswers = answers..shuffle();
        selectedAnswer = 0;
      });
    } else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => QuizResult(
              score: (corrects / questions.length) * 100)));
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      // backgroundColor: MyColor.kPrimaryColorLight,
      body: SafeArea(
        child: (questions != null)
            ? Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    opacity: 1,
                    image: AssetImage("assets/quiz-bg.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    bottom: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close,
                                color: Color.fromARGB(255, 57, 111, 104),
                                size: 32.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Question ${currentQuestion + 1}',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 85, 163, 152),
                            ),
                          ),
                          Text(
                            '/${questions.length}',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Color.fromARGB(255, 85, 163, 152),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        margin: const EdgeInsets.symmetric(vertical: 30.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          HtmlUnescape().convert(currentTitle),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Color.fromARGB(255, 85, 163, 152),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: currentAnswers.length + 1,
                          itemBuilder: (context, index) {
                            if (index == currentAnswers.length) {
                              return GestureDetector(
                                onTap: () {
                                  if (selectedAnswer != null)
                                    verifyAndNext(context);
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 15.0,
                                    horizontal: 30.0,
                                  ),
                                  padding: const EdgeInsets.all(15.0),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Color.fromARGB(255, 85, 163, 152),
                                          blurRadius: 10.0,
                                          offset: Offset(0.0, 3.0)),
                                    ],
                                    color: (selectedAnswer == null)
                                        ? Colors.grey
                                        : Color.fromARGB(255, 109, 215, 201),
                                    borderRadius: BorderRadius.circular(180.0),
                                  ),
                                  child: Text(
                                    'Next',
                                    textAlign: TextAlign.center,
                                    maxLines: 5,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              );
                            }
                            String answer = currentAnswers[index];
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedAnswer = index;
                                });
                              },
                              child: QuizOption(
                                index: index,
                                selectedAnswer: selectedAnswer,
                                answer: answer,
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            : Center(
                child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(
                    theme.primaryColor,
                  ),
                ),
              ),
      ),
    );
  }
}
