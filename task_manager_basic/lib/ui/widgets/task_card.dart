
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String labelText;
  final Color labelBGColor;
  const TaskCard({
    super.key, required this.labelText, required this.labelBGColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8)
      ),
      tileColor: Colors.white,
      title: Text('Title will be here'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Description of the task. How this task will be done.'),
          Text('Date: 30/10/2025',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Chip(
                label: Text(labelText, style: TextStyle(color: Colors.white),),
                backgroundColor: labelBGColor,
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)
                ),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: Colors.grey,)),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete, color: Colors.red,)),
            ],
          )
        ],
      ),
    );
  }
}