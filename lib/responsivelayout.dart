import 'package:flutter/material.dart';


class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return  width < 600
          ? const MobileView()
          : width < 1024
              ? const TabletView()
              : const DesktopView();
    
  }
}


class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Layout"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
      
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
              child: ListTile(
              leading: const Icon(Icons.person),
      
              title: Text("User ${index + 1}"),
      
              subtitle: const Text("Flutter Developer"),
      
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tablet Layout"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
      
        child: GridView.builder(
          itemCount: 10,
      
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
      
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
      
              child: Center(
                child: Text(
                  "Item ${index + 1}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Desktop Layout"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
      
        child: GridView.builder(
          itemCount: 12,
      
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
      
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
      
              child: Center(
                child: Text(
                  "Grid ${index + 1}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}