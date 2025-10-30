import 'package:flutter/material.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 16,),
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
                }, separatorBuilder: (context, index) {
                  return SizedBox(width: 8,);
              },
              ),
            )
          ],
        ),
      )
    );
  }
}

class TaskCountByStatusCard extends StatelessWidget {
  const TaskCountByStatusCard({
    super.key, required this.title, required this.count,
  });

  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        child: Column(
          children: [
            Text('$count', style: Theme.of(context).textTheme.titleLarge,),
            Text(title, style: TextStyle(
              color: Colors.grey,
            ),),
          ],
        ),
      ),
    );
  }
}
