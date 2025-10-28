import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_basic/ui/screens/forgot_password_email_verification_screen.dart';
import 'package:task_manager_basic/ui/screens/main_nav_bar_holder_screen.dart';
import 'package:task_manager_basic/ui/screens/sign_up_screen.dart';
import 'package:task_manager_basic/ui/widgets/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextEditingController =
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
                    'Get Started With',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                      controller: _emailTextEditingController,
                      decoration: InputDecoration(hintText: 'Email')),
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
                      onPressed: _onTapLoginButton,
                      child: Icon(Icons.arrow_circle_right_outlined)),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () {
                              _onTapForgotPasswordButton();
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )),
                        RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              text: "Don't have an account? ",
                              children: [
                                TextSpan(
                                  text: "Sign Up",
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = _onTapSignUpButton,
                                )
                              ]),
                        ),
                      ],
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

  void _onTapForgotPasswordButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ForgotPasswordEmailVerificationScreen(),
      ),
    );
  }

  void _onTapSignUpButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpScreen(),
      ),
    );
  }

  void _onTapLoginButton() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => MainNavBarHolderScreen()),
        (predicate) => false);
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }
}
