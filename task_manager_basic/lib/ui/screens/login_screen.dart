import 'package:flutter/material.dart';
import 'package:task_manager_basic/ui/widgets/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextEditingController = TextEditingController();
  final TextEditingController _passwordTextEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
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
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: _emailTextEditingController,
                  decoration: InputDecoration(
                    hintText: 'Email'
                  )
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _passwordTextEditingController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password'
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.green,
                    fixedSize: Size.fromWidth(double.maxFinite),
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                    
                    onPressed: () {},
                    child: Icon(Icons.arrow_circle_right_outlined)),
                TextButton(onPressed: () {}, child: Text('Forgot Password?')),
                RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      text: "Don't have an account?",
                      children: [
                        TextSpan(
                          text: "Sign Up",
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
