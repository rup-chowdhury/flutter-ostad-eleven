import 'package:firebase_live_score_project/home_screen.dart';
import 'package:flutter/material.dart';

class StudentListApp extends StatefulWidget {
  const StudentListApp({super.key});

  @override
  State<StudentListApp> createState() => _StudentListAppState();
}

class _StudentListAppState extends State<StudentListApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
