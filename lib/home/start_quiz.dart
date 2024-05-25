import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_app/home/quiz/final_screen.dart';
import 'package:flutter_app/home/quiz/quiz.dart';
import 'package:flutter_app/theme/my_colors.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz({Key? key}) : super(key: key);
  static const _backgroundColor = Color(0xFFF15BB5);

  static const _colors = [
    Color(0xFFFEE440),
    Color(0xFF00BBF9),
  ];

  static const _durations = [
    5000,
    4000,
  ];

  static const _heightPercentages = [
    0.65,
    0.66,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            transform: Matrix4.translationValues(0.0, -60, 0.0),
            child: Image.asset('assets/modern-mental-health-concept.png'),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Quiz())),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 85, 163, 152),
                        blurRadius: 15.0,
                        offset: Offset(0.0, 3.0)),
                  ],
                  color: Colors.white,
                  border: Border.all(color: MyColor.kPrimaryColor, width: 2),
                  borderRadius: BorderRadius.circular(10)),
              height: 80,
              child: Stack(
                fit: StackFit.loose,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 100,
                    width: 300,
                    child: WaveWidget(
                      config: CustomConfig(
                        colors: [
                          Color.fromARGB(255, 31, 95, 30),
                          Color.fromARGB(255, 42, 125, 40),
                          Color.fromARGB(255, 89, 182, 87),
                          Color.fromARGB(255, 116, 211, 114),
                        ],
                        durations: [18000, 8000, 5000, 12000],
                        heightPercentages: [0.65, 0.66, 0.68, 0.70],
                      ),
                      size: Size(double.infinity, double.infinity),
                      waveAmplitude: 0,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Check Mental Health",
                          style: TextStyle(
                              color: MyColor.kPrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        AnimatedEmoji(
                          AnimatedEmojis.rocket,
                          size: 30,
                          repeat: true,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(top: 10),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
