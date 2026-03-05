import 'package:flutter/material.dart';

class GoalPage extends StatelessWidget {
  const GoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" ")),
      body: Center(
        child: Text("Welcome To Goal Page", style: TextStyle(fontSize: 22)),
      ),
    );
  }
}

