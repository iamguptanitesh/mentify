// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/home/mental_health/audio_player.dart';
import 'package:flutter_app/theme/my_colors.dart';
// import 'package:audioplayers/audioplayers.dart';

class AudioApp extends StatefulWidget {
  @override
  _AudioAppState createState() => _AudioAppState();
}

class _AudioAppState extends State<AudioApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back)),
          title: const Text("Mental Fitness"),
          backgroundColor: MyColor.kPrimaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Yoga And Meditation',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: MyColor.kPrimaryColor),
                      ),
                      AudioPlayerWidget(
                        url:
                            'https://firebasestorage.googleapis.com/v0/b/hackfitness-4ec12.appspot.com/o/YogaandMeditation.mp3?alt=media&token=60c87128-c7ee-437a-947e-62380256457f',
                        isAsset: false,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sleepmusic',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: MyColor.kPrimaryColor),
                      ),
                      AudioPlayerWidget(
                          url:
                              "https://firebasestorage.googleapis.com/v0/b/hackfitness-4ec12.appspot.com/o/sleepmusic.mp3?alt=media&token=f1df7f49-3888-4ae4-8e0c-04ee8e7d2dec",
                          isAsset: false),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Meditation',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: MyColor.kPrimaryColor),
                      ),
                      AudioPlayerWidget(
                          url:
                              "https://firebasestorage.googleapis.com/v0/b/hackfitness-4ec12.appspot.com/o/MeditationMusicRingtone.mp3?alt=media&token=7a6e5d39-93fa-4212-8945-ea09268796cf",
                          isAsset: false),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Instrumental',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: MyColor.kPrimaryColor),
                      ),
                      AudioPlayerWidget(
                          url:
                              "https://firebasestorage.googleapis.com/v0/b/hackfitness-4ec12.appspot.com/o/Instrumental.mp3?alt=media&token=0ea65004-2199-4fd0-bedb-5578e87f3468",
                          isAsset: false),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Zen',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: MyColor.kPrimaryColor),
                      ),
                      AudioPlayerWidget(
                          url:
                              "https://firebasestorage.googleapis.com/v0/b/hackfitness-4ec12.appspot.com/o/Musiquezen5minutes256kbpsRingtone.mp3?alt=media&token=c6086771-3c3e-468f-83fe-e5864332a52b",
                          isAsset: false),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
