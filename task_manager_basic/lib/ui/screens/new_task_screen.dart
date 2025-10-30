import 'package:flutter/material.dart';
import 'package:task_manager_basic/ui/screens/add_new_task_screen.dart';
import 'package:task_manager_basic/ui/widgets/task_card.dart';
import 'package:task_manager_basic/ui/widgets/task_count_by_status_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: _onTabFAB,
          child: Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return TaskCountByStatusCard(
                      title: 'New',
                      count: 2,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 8,
                    );
                  },
                ),
              ),
              SizedBox(height: 8,),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return TaskCard(labelText: 'New', labelBGColor: Colors.blue,);
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

  void _onTabFAB() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewTaskScreen()));
  }
}

