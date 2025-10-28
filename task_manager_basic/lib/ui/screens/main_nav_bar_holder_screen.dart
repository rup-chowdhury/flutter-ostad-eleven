import 'package:flutter/material.dart';

class MainNavBarHolderScreen extends StatefulWidget {
  const MainNavBarHolderScreen({super.key});

  @override
  State<MainNavBarHolderScreen> createState() => _MainNavBarHolderScreenState();
}

class _MainNavBarHolderScreenState extends State<MainNavBarHolderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(
          icon: Icon(Icons.new_label_outlined),
          label: 'New',
        ),
        NavigationDestination(
          icon: Icon(Icons.blur_circular),
          label: 'Progress',
        ),
        NavigationDestination(
          icon: Icon(Icons.new_label_outlined),
          label: 'Canceled',
        ),
        NavigationDestination(
          icon: Icon(Icons.new_label_outlined),
          label: 'Completed',
        ),
      ]),
    );
  }
}
