import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_basic/ui/screens/login_screen.dart';
import 'package:task_manager_basic/ui/widgets/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 82,
                  ),
                  Text(
                    'Join With Us',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 24,
                  ),
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
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                          text: "Already have an account? ",
                          children: [
                            TextSpan(
                              text: "Sign In",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = _onTapSignInButton,
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignInButton() {
    Navigator.pop(context);
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
