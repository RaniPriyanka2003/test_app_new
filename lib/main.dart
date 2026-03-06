import 'package:flutter/material.dart';
import 'package:test_app/responsivelayout.dart';
import 'home_page.dart';
import 'showdailouge.dart';
import 'stats_page.dart';
import 'rewards_page.dart';
import 'goal_page.dart';
import 'google.dart';
import 'facebook.dart';
import 'email.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  final List<Widget> pages = [
    // HomePage(),
    StatsPage(),
    RewardsPage(),
    GoalPage(),
    Googlepage(),
    Facebookpage(),
    Emailpage()
    
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveScreen(),);
    
  }
}
