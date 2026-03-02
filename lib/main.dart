import 'package:flutter/material.dart';

import 'login_page.dart';
void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }
void decrementCounter() {
    setState(() {
      counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter LoginPage Demo"),
        actions: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Badge(
              label: Text(counter.toString()),
              isLabelVisible: counter > 0,
              child: Icon(Icons.notifications),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Counter Value:",
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 10),

            Text(
              counter.toString(),
              style: TextStyle(fontSize: 32),
            ),

            SizedBox(height: 30),

            Badge(
              label: Text(counter.toString()),
              isLabelVisible: counter > 0,
              child: Icon(Icons.shopping_cart, size: 50),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: incrementCounter,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10,),
          FloatingActionButton(
            onPressed: decrementCounter,
            child: Icon(Icons.remove),
          ),SizedBox(height: 10,),FloatingActionButton(
            onPressed: () =>
              Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginPage())),
              child: Icon(Icons.next_plan),
          ),
        ]),
    );
  }
}