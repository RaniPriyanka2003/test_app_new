import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.pink, title: Text('HELLO')),
      body: Center(
        child: Text('RANI PRIYANKA', style: TextStyle(fontSize: 24,color: Colors.blue)),
      ),
    );
  }
}
