import 'package:firebase_live_score_project/home_screen.dart';
import 'package:flutter/material.dart';

class CricketLiveScoreApp extends StatefulWidget {
  const CricketLiveScoreApp({super.key});

  @override
  State<CricketLiveScoreApp> createState() => _CricketLiveScoreAppState();
}

class _CricketLiveScoreAppState extends State<CricketLiveScoreApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
