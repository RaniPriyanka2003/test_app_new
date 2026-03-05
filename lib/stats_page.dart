import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "STATS",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Day"),
              Tab(text: "Week"),
              Tab(text: "Month"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  statCard(
                    "Bp",
                    "120 bpm",
                    "Range: Normal",
                    Colors.pink,
                    Icons.favorite,
                  ),
                  statCard(
                    "Sleep",
                    "8 h",
                    "Status: Good",
                    Colors.blue,
                    Icons.bed,
                  ),
                  statCard(
                    "Calories",
                    "582 kcal",
                    "Goal: 1000 Kcal",
                    Colors.purple,
                    Icons.local_fire_department,
                  ),
                  statCard(
                    "Steps",
                    "1674",
                    "Goal: 2000",
                    Colors.lightGreen,
                    Icons.directions_walk,
                  ),
                  statCard(
                    "Worktime",
                    "1 h",
                    "Goal: 2 h",
                    Colors.black,
                    Icons.work,
                  ),
                  statCard(
                    "Running",
                    "15 MIN",
                    "Goal: 30 MIN",
                    Colors.orange,
                    Icons.directions_run,
                  ),
                ],
              ),
            ),

            const Center(
              child: Text(
                "This is Week Page",
                style: TextStyle(fontSize: 20),
              ),
            ),

            const Center(
              child: Text(
                "This is Month Page",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget statCard(
    String title,
    String value,
    String bottomText,
    Color color,
    IconData icon,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [

          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Positioned(
            top: 10,
            right: 10,
            child: Icon(
              icon,
              color: Colors.white70,
              size: 45,
            ),
          ),


          Center(
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Positioned(
            bottom: 12,
            right: 12,
            child: Text(
              bottomText,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}