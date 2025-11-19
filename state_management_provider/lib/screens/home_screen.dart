import 'package:flutter/material.dart';
import 'package:state_management_provider/counter_widget.dart';
import 'package:state_management_provider/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final counter = CounterWidget.of(context)?.counter ?? 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            FilledButton(onPressed: (){}, child: Text('Profile')),
            FilledButton(onPressed: (){}, child: Text('ABC')),
            FilledButton(onPressed: (){}, child: Text('Login')),
            FilledButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx) => SettingsScreen()));
            }, child: Text('Settings')),
          ],
        )
      ),
    );
  }
}
