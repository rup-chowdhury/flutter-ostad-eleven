import 'package:flutter/material.dart';
import 'package:task_manager_basic/ui/widgets/task_card.dart';
import 'package:task_manager_basic/ui/widgets/task_count_by_status_card.dart';

class CanceledTaskScreen extends StatefulWidget {
  const CanceledTaskScreen({super.key});

  @override
  State<CanceledTaskScreen> createState() => _CanceledTaskScreenState();
}

class _CanceledTaskScreenState extends State<CanceledTaskScreen> {
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
                        return TaskCard(labelText: 'Canceled', labelBGColor: Colors.redAccent,);
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

