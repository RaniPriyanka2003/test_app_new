import 'package:flutter/material.dart';
import 'home_page.dart';
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
    HomePage(),
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
      home: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: "Stats",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Rewards"),
            BottomNavigationBarItem(icon: Icon(Icons.flag), label: "Goal"),
          ],
        ),
      ),
    );
  }
}