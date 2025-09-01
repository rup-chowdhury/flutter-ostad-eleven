import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List recipes = [];

  @override
  void initState() {
    super.initState();
    loadRecipes();
  }

  Future<void> loadRecipes() async {
    final String response = await rootBundle.loadString('assets/recipes.json');
    final data = jsonDecode(response);
    setState(() {
      recipes = data['recipes'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Recipes', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500
        ),),
        backgroundColor: Colors.blue,

      ),
      body: ListView.builder(
      itemCount: recipes.length,
      itemBuilder: (context, index) {
      final recipe = recipes[index];
      return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      ),
        child: ListTile(
        leading: const Icon(Icons.emoji_food_beverage),
              tileColor: Colors.white,
              title: Text(recipes['title']),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(recipes['description']),
                ],
              ),
            ),
      );
      }
    )
    );

  }
}
