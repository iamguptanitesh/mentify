import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:awesome_circular_chart/awesome_circular_chart.dart';
import 'package:flutter_app/home/dashboard.dart';
import 'package:url_launcher/url_launcher.dart';

class QuizResult extends StatelessWidget {
  final double score;

  const QuizResult({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<dynamic> openUrl() async {
      var url;
      if (this.score <= 50)
        url =
            "https://www.youtube.com/watch?v=d96akWDnx0w&ab_channel=Motiversity";
      else
        url =
            "https://www.youtube.com/watch?v=6Pe6KKlRBpM&ab_channel=BenLionelScott";
      try {
        if (await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
        } else {
          throw 'Could not launch $url';
        }
      } catch (e) {
        print(e);
      }
    }

    List<CircularStackEntry> data = <CircularStackEntry>[
      new CircularStackEntry(
        <CircularSegmentEntry>[
          new CircularSegmentEntry(score, Color(0xff04c9af), rankKey: 'Q1'),
          new CircularSegmentEntry(100 - score, Color(0xff016d6a),
              rankKey: 'Q1'),
        ],
        rankKey: 'Quarterly Profits',
      ),
    ];
    final GlobalKey<AnimatedCircularChartState> _chartKey =
        new GlobalKey<AnimatedCircularChartState>();
    return Scaffold(
      body: Container(
        color: Color(0xff006464),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedCircularChart(
              holeLabel: "${score.toInt()} %",
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
              key: _chartKey,
              size: const Size(300.0, 300.0),
              initialChartData: data,
              chartType: CircularChartType.Radial,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  score > 50 ? "Great" : "Cool",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 40),
                ),
                Padding(padding: EdgeInsets.all(10)),
                AnimatedEmoji(
                  score > 50
                      ? AnimatedEmojis.clap(SkinTone.light)
                      : AnimatedEmojis.thumb(SkinTone.light),
                  size: 58,
                  repeat: true,
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    score <= 50
                        ? "We've noticed that you've been going through a tough time and it's important for you to focus on improving your mental stability. Whether it's talking through your feelings, finding resources, or just being there for you"
                        : "We congratulate you on maintaining a perfect mental health stability. It's not always easy to prioritize our mental health, but your commitment to taking care of yourself is truly inspiring. Keep up the great work!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(148, 128, 255, 234)),
                  ),
                )),
            GestureDetector(
              onTap: () {
                openUrl();
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
                        color: Color.fromARGB(255, 85, 163, 152),
                        blurRadius: 10.0,
                        offset: Offset(0.0, 3.0)),
                  ],
                  color: Color.fromARGB(255, 109, 215, 201),
                  borderRadius: BorderRadius.circular(180.0),
                ),
                child: Text(
                  'See Recommendations',
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
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
                        color: Color.fromARGB(255, 85, 163, 152),
                        blurRadius: 10.0,
                        offset: Offset(0.0, 3.0)),
                  ],
                  color: Color.fromARGB(255, 109, 215, 201),
                  borderRadius: BorderRadius.circular(180.0),
                ),
                child: Text(
                  'Dashboard',
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
