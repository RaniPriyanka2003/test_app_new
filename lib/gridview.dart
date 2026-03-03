import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StatsDashboard(),
  );
}

class StatsDashboard extends StatefulWidget {
  const StatsDashboard({super.key});

  @override
  State<StatsDashboard> createState() => _StatsDashboardState();
}

class _StatsDashboardState extends State<StatsDashboard> {
  int bottomIndex = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xffF4F6FA),

        appBar: AppBar(
          backgroundColor: const Color(0xffF4F6FA),
          elevation: 0,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 18,
              ),
              onPressed: () {},
            ),
          ),
          title: const Text(
            "STATS",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                icon: const Icon(Icons.more_vert, color: Colors.black),
                onPressed: () {},
              ),
            ),
          ],

          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  tabs: const [
                    Tab(text: "Day"),
                    Tab(text: "Week"),
                    Tab(text: "Month"),
                  ],
                ),
              ),
            ),
          ),
        ),

        body: const TabBarView(
          children: [StatsGrid(), StatsGrid(), StatsGrid()],
        ),

        bottomNavigationBar: Container(
          height: 75,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    bottomIndex = 0;
                  });
                },
                child: Icon(
                  bottomIndex == 0 ? Icons.home : Icons.home_outlined,
                  color: bottomIndex == 0 ? Colors.deepPurple : Colors.grey,
                  size: 28,
                ),
              ),
               GestureDetector(
                onTap: () {
                  setState(() {
                    bottomIndex = 0;
                  });
                },
                child: Icon(
                  bottomIndex == 0 ? Icons.reviews_outlined : Icons.reviews_outlined,
                  
                  color: bottomIndex == 0 ? Colors.deepPurple : Colors.grey,
                  size: 28,
                ),
              ),


              GestureDetector(
                onTap: () {
                  setState(() {
                    bottomIndex = 1;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: bottomIndex == 1
                        ? Colors.deepPurple.withOpacity(0.15)
                        : Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    bottomIndex == 1
                        ? Icons.bar_chart
                        : Icons.bar_chart_outlined,
                    color: bottomIndex == 1 ? Colors.deepPurple : Colors.grey,
                    size: 30,
                  ),
                ),
            
              ),
            
              GestureDetector(
  onTap: () {
    setState(() {
      bottomIndex = 0;
    });
  },
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(
        Icons.reviews_outlined,
        color: bottomIndex == 0
            ? Colors.deepPurple
            : Colors.grey,
        size: 28,
      ),
      const SizedBox(height: 4),
      Text(
        "Reviews",
        style: TextStyle(
          fontSize: 12,
          color: bottomIndex == 0
              ? Colors.deepPurple
              : Colors.grey,
        ),
      ),
    ],
  ),
),
            ],
          ),
        ),
      ),
    );
  }
}

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children: const [
          StatCard("Heart Rate", "124 bpm", Color(0xffFF8A80),Icon(Icons.favorite)),
          StatCard("Sleep", "8 h 42 m", Color(0xffB388FF),Icon(Icons.nightlight_round)),
          StatCard("Calories", "583 kcal", Color(0xffFFAB40),Icon(Icons.local_fire_department)),
          StatCard("Steps", "16,741", Color(0xff40C4FF),Icon(Icons.stairs)),
          StatCard("Cycling", "5,3 km", Color(0xff536DFE),Icon(Icons.directions_bike)),
          StatCard("Walking", "12,5 km", Color.fromARGB(255, 166, 240, 105,),Icon(Icons.directions_walk)),
        ],
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final Icon icon;
  const StatCard(this.title, this.value, this.color, this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Icon(
            icon.icon,
          color:Colors.white,
          size: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 13),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),)]
        )  ,]
      
        
      ),
    );
    
  }
}
