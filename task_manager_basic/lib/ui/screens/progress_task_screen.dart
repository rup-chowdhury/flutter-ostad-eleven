import 'package:flutter/material.dart';
import 'package:task_manager_basic/ui/widgets/task_card.dart';
import 'package:task_manager_basic/ui/widgets/task_count_by_status_card.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 8,),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return TaskCard();
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 12,
                        );
                      },
                      itemCount: 10),
              )
            ],
          ),
        ));
  }
}

