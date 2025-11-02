import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_basic/ui/screens/forgot_password_otp_verification_screen.dart';
import 'package:task_manager_basic/ui/screens/sign_up_screen.dart';
import 'package:task_manager_basic/ui/widgets/screen_background.dart';

class ForgotPasswordEmailVerificationScreen extends StatefulWidget {
  const ForgotPasswordEmailVerificationScreen({super.key});

  static const String name = '/forgot-password-email';

  @override
  State<ForgotPasswordEmailVerificationScreen> createState() =>
      _ForgotPasswordEmailVerificationScreenState();
}

class _ForgotPasswordEmailVerificationScreenState
    extends State<ForgotPasswordEmailVerificationScreen> {
  final TextEditingController _emailTextEditingController =
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
                    'Your Email Address',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'A 6 digits OTP will be sent to your Email address.',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                      controller: _emailTextEditingController,
                      decoration: InputDecoration(hintText: 'Email')),
                  SizedBox(
                    height: 32,
                  ),
                  FilledButton(
                      onPressed: _onTapNextButton,
                      child: Icon(Icons.arrow_circle_right_outlined)),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                          text: "Have account? ",
                          children: [
                            TextSpan(
                              text: "Sign In",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = _onTapSignInButton,
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

  void _onTapNextButton() {
    Navigator.pushNamed(
        context,
        ForgotPasswordOtpVerificationScreen.name);
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    super.dispose();
  }
}
