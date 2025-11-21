import 'package:flutter/material.dart';
import 'package:state_management_provider/counter_notifier.dart';
import 'package:state_management_provider/screens/reset_password_screen.dart';

import '../counter_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});


  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  CounterNotifier counterNotifier = CounterNotifier();

  @override
  Widget build(BuildContext context) {
  final counter = CounterWidget.of(context)?.counter ?? 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          children: [
            ListenableBuilder(
              listenable: counterNotifier,
                builder: (context, child) {
                return Text(counterNotifier.counter.toString());
              }
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {
                  counterNotifier.decrement();
                }, icon: Icon(Icons.remove)),
                IconButton(onPressed: () {
                  counterNotifier.increment();
                }, icon: Icon(Icons.add)),
              ],
            ),
            FilledButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx) => ResetPasswordScreen()));
            }, child: Text('Forgot Password')),
          ],
        ),
      ),
    );
  }
}
