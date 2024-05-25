// import 'package:fitness_app_megahack/Mental/Chatbot/dialog_flow.dart';
// import 'package:fitness_app_megahack/Mental/video/youtube.dart';
// import 'package:fitness_app_megahack/map/map_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home/chat/chat.dart';
import 'package:flutter_app/home/mental_health/music.dart';
import 'package:url_launcher/url_launcher.dart';

class Fourth extends StatelessWidget {
  Future<dynamic> openUrl() async {
    try {
      const url = 'https://www.youtube.com/watch?v=ga-MniJxQz8&ab_channel=FearlessSoul';
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 300.0,
                width: 300.0,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  image: DecorationImage(
                    image: new AssetImage('assets/woman-meditating.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              InkWell(
                  child: Container(
                    height: 140.0,
                    width: 410.0,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      image: DecorationImage(
                        image: new AssetImage('assets/business-idea.jpeg'),
                        fit: BoxFit.contain,
                      ),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                  ),
                  onTap: () {
                    openUrl();
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => YoutubePlayerDemoApp()),
                    // );
                  }),
              Text('Motivational Video', style: TextStyle(fontSize: 23)),
              SizedBox(height: 20),
              InkWell(
                  child: Container(
                    height: 140.0,
                    width: 410.0,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      image: DecorationImage(
                        image: new AssetImage('assets/record-player.jpeg'),
                        fit: BoxFit.contain,
                      ),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AudioApp()),
                    );
                  }),
              Text('Music Therapy', style: TextStyle(fontSize: 23)),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
