import 'package:flutter/material.dart';
import 'package:task_manager_basic/ui/widgets/screen_background.dart';
import 'package:task_manager_basic/ui/widgets/tm_app_bar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 32),
                  Text('Add New Task',
                  style: Theme.of(context).textTheme.titleLarge,),
                  SizedBox(height: 16,),
                  TextFormField(
                    controller: _titleTEController,
                    decoration: InputDecoration(
                      hintText: 'Title',
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: _descriptionTEController,
                    maxLines: 6,
                    decoration: InputDecoration(
                      hintText: 'Description',
                    ),
                  ),
                  SizedBox(height: 16,),
                  FilledButton(onPressed: (){}, child: Text('Add Task')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleTEController.dispose();
    _descriptionTEController.dispose();
    super.dispose();
  }
}
