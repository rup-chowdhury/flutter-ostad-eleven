import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StudentList> _studentList = [];
  bool _inProgress = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Students')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('students').snapshots(),
        builder: (context, snapshots) {
          if (snapshots.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshots.hasError) {
            return Center(child: Text(snapshots.error.toString()));
          } else if (snapshots.hasData) {
            _studentList.clear();
            for (QueryDocumentSnapshot<Map<String, dynamic>> doc
                in snapshots.data!.docs) {
              _studentList.add(
                StudentList(
                  id: doc.id,
                  name: doc.get('name'),
                  rollNumber: doc.get('roll_number'),
                  course: doc.get('course'),
                ),
              );
            }

            return ListView.builder(
              itemCount: _studentList.length,
              itemBuilder: (context, index) {
                final student = _studentList[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.book_outlined),
                  ),
                  title: Text(student.name, style: TextStyle(fontWeight: FontWeight.w600),),
                  trailing: Text(
                    student.rollNumber.toString()
                  ),
                  subtitle: Text(
                    student.course
                  ),
                );
              },
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}

class StudentList {
  final String id;
  final String name;
  final int rollNumber;
  final String course;

  StudentList({
    required this.id,
    required this.name,
    required this.rollNumber,
    required this.course,
  });
}
