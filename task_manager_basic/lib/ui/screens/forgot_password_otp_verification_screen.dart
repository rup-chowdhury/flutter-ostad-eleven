import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager_basic/ui/screens/login_screen.dart';
import 'package:task_manager_basic/ui/screens/reset_password_screen.dart';
import 'package:task_manager_basic/ui/screens/sign_up_screen.dart';
import 'package:task_manager_basic/ui/widgets/screen_background.dart';

class ForgotPasswordOtpVerificationScreen extends StatefulWidget {
  const ForgotPasswordOtpVerificationScreen({super.key});

  static const String name = '/forgot-password-otp';

  @override
  State<ForgotPasswordOtpVerificationScreen> createState() =>
      _ForgotPasswordOtpVerificationScreenState();
}

class _ForgotPasswordOtpVerificationScreenState
    extends State<ForgotPasswordOtpVerificationScreen> {
  final TextEditingController _otpTextEditingController =
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
                    'Enter your OTP',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'A 6 digits OTP has been sent to your Email address.',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    controller: _otpTextEditingController,
                    appContext: context,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  FilledButton(
                    onPressed: _onTapVerifyButton,
                    child: Text('Verify'),
                  ),
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
    Navigator.pushNamedAndRemoveUntil(
        context,
        LoginScreen.name,
        (predicate) => false);
  }

  void _onTapVerifyButton() {
    Navigator.pushNamedAndRemoveUntil(
        context,
        ResetPasswordScreen.name,
        (predicate) => false);
  }

  @override
  void dispose() {
    // _otpTextEditingController.dispose();
    super.dispose();
  }
}
