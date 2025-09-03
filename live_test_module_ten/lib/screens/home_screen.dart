import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Employee'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0 ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Name'
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Age'
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Salary'
              ),
            ),
            SizedBox(height: 24,),
            ElevatedButton(onPressed: (){},
                child: Text('Add Employee'))
          ],
        ),
      ),
    );
  }
}
