import 'package:flutter/material.dart';

class badge extends StatefulWidget {
  const badge({super.key});

  @override
  State<badge> createState() => _badgeState();
}

class _badgeState extends State<badge> {
  int cartCount = 0;
  int notificationCount = 3;
  List<String> products = [
  "Apple",
  "Banana",
  "Mango",
  "Orange",
  "Pineapple",
];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Badge All Examples"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: Badge(
                  label: Text('$notificationCount'),
                  isLabelVisible: notificationCount > 0,
                  child: const Icon(Icons.notifications),
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            const SizedBox(height: 30),
            // 1️⃣ Simple Badge
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  const Text("Simple Notification Badge",style: TextStyle(fontSize:16, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 30),
                  Center(
                    child: Badge(label: Text('5'), child: Icon(Icons.mail, size: 40)),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),

            // 2️⃣ Dot Badge()
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  const Text("Dot Badge",style: TextStyle(fontSize:16, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10),
                  Center(
                    child: const Badge(child: Icon(Icons.message, size: 40)),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),

            // 3️⃣ Dynamic Cart Badge
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  const Text("Dynamic Cart Badge",style: TextStyle(fontSize:16, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10),
                  Center(
                    child: Badge(
                      label: Text(cartCount.toString()),
                      isLabelVisible: cartCount > 0,
                      child: const Icon(Icons.shopping_cart, size: 40),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text("Total Items:$cartCount", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),),


          
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.blue,
              borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        cartCount++;
                      });
                    },
                    child: const Text("Add to Cart"),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: cartCount == 0
                        ? null
                        : () {
                            setState(() {
                              cartCount--;
                            });
                          },
                    child: const Text('Remove From Cart'),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        cartCount = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text('Reset Cart'),
                  ),
                ],
              ),
            ),
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  const Text("ice_skating",style: TextStyle(fontSize:16, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 30),
                  Center(
                    child: Badge(label: Text('5'), child: Icon(Icons.ice_skating, size: 40)),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Badge(
                label: const Text('2'),
                child: const Icon(Icons.chat),
              ),
              label: "Chat",
            ),
          ],
        ),
      ),
    );
  }
}
