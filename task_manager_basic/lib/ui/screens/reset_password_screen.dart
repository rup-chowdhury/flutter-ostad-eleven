import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager_basic/ui/screens/login_screen.dart';
import 'package:task_manager_basic/ui/screens/sign_up_screen.dart';
import 'package:task_manager_basic/ui/widgets/screen_background.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _passwordTextEditingController = TextEditingController();
  final TextEditingController _confirmPasswordTextEditingController = TextEditingController();
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
                    'Reset Password',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Password should be more than 6 letters and combination of letters and numbers',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: _passwordTextEditingController,
                    decoration: InputDecoration(
                      hintText: 'New Password',
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _confirmPasswordTextEditingController,
                    decoration: InputDecoration(
                      hintText: 'Confirm New Password',
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  FilledButton(
                      onPressed: _onTapNextButton,
                      child: Icon(Icons.arrow_circle_right_outlined)),
                  SizedBox(height: 40,),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
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

  void _onTapNextButton() {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen()), (predicate) => false);
  }

  void _onTapSignInButton() {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen()), (predicate) => false);
  }

  @override
  void dispose() {
    _passwordTextEditingController.dispose();
    _confirmPasswordTextEditingController.dispose();
    super.dispose();
  }
}
