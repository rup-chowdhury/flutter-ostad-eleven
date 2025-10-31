import 'package:flutter/material.dart';
import 'package:task_manager_basic/ui/widgets/photo_picker_field.dart';
import 'package:task_manager_basic/ui/widgets/screen_background.dart';
import 'package:task_manager_basic/ui/widgets/tm_app_bar.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  final TextEditingController _emailTextEditingController =
  TextEditingController();
  final TextEditingController _firstNameTextEditingController =
  TextEditingController();
  final TextEditingController _lastNameTextEditingController =
  TextEditingController();
  final TextEditingController _mobileTextEditingController =
  TextEditingController();
  final TextEditingController _passwordTextEditingController =
  TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 48,),
                  Text('Update Profile',
                      style: TextTheme.of(context).titleLarge,
                  ),
                  SizedBox(height: 24,),
                  PhotoPickerField(),
                  SizedBox(height: 8,),
                  TextFormField(
                    controller: _emailTextEditingController,
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _firstNameTextEditingController,
                    decoration: InputDecoration(hintText: 'First Name'),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _lastNameTextEditingController,
                    decoration: InputDecoration(hintText: 'Last Name'),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _mobileTextEditingController,
                    decoration: InputDecoration(hintText: 'Mobile'),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _passwordTextEditingController,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  FilledButton(
                      onPressed: () {},
                      child: Icon(Icons.arrow_circle_right_outlined)),
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
    _emailTextEditingController.dispose();
    _firstNameTextEditingController.dispose();
    _lastNameTextEditingController.dispose();
    _mobileTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }
}


