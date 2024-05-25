// ignore_for_file: prefer_const_constructors, dead_code, unused_element, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home/diet/diet.dart';
import 'package:flutter_app/home/screens/fifth.dart';
import 'package:flutter_app/home/screens/fourth.dart';
import 'package:flutter_app/home/screens/pedometer_1.dart';
import 'package:flutter_app/home/screens/second.dart';
import 'package:flutter_app/home/screens/third.dart';
import 'package:flutter_app/home/start_quiz.dart';
import 'package:flutter_app/theme/my_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int pageIndex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  double height = 0.0;
  double weight = 0.0;
  double bmi = 0.0;

  final Exercise _sites = new Exercise();
  final StartQuiz _quiz = new StartQuiz();
  final Diet _diet = new Diet();
  final Fourth _flutterpages = new Fourth();

  Widget _showPage = new StartQuiz();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _quiz;
        break;
      case 1:
        return _diet;
        break;
      case 2:
        return _sites;
        break;
      case 3:
        return _flutterpages;
        break;
      default:
        return Center(
          child: Center(
            child: Text(
              '404 Page Not Found',
              style: TextStyle(fontSize: 30),
            ),
          ),
        );
    }
  }

  @override
  void initState() {
    SharedPreferences.getInstance().then((prefs) {
      height = prefs.getDouble('height')!;
      weight = prefs.getDouble('weight')!;
      bmi = (703 * weight) / (height * height);
    });
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: pageIndex,
        height: 55.0,
        items: <Widget>[
          Container(
              padding: EdgeInsets.all(10),
              child: Icon(FontAwesomeIcons.fileContract,
                  size: 30, color: Colors.white)),
          Container(
              padding: EdgeInsets.all(10),
              child: Icon(FontAwesomeIcons.utensils,
                  size: 30, color: Colors.white)),
          Container(
              padding: EdgeInsets.all(10),
              child: Icon(FontAwesomeIcons.dumbbell,
                  size: 30, color: Colors.white)),
          Container(
              padding: EdgeInsets.all(10),
              child: Icon(FontAwesomeIcons.fileMedicalAlt,
                  size: 30, color: Colors.white)),
        ],
        color: MyColor.kPrimaryColor,
        buttonBackgroundColor: MyColor.kPrimaryColor,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (int tappedIndex) {
          setState(() {
            _showPage = _pageChooser(tappedIndex);
          });
        },
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: _showPage,
        ),
      ),
    );
  }
}
