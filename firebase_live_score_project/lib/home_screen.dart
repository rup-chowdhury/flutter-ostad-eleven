import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live score'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(backgroundColor: Colors.green, radius: 12,),
          title: Text('Bangladesh vs England'),
          trailing: Text('12 - 14'),
          subtitle: Text('Winner: '),
        );
      }),
    );
  }
}
