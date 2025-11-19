import 'package:flutter/material.dart';

import '../counter_widget.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final counter = CounterWidget.of(context)?.counter ?? 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(counter.toString())
          ],
        ),
      ),
    );
  }
}
