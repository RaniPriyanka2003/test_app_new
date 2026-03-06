import 'package:flutter/material.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        centerTitle: true,
      ),

      body: Center(
        child: ElevatedButton(
          child: const Text("Login"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Logout"),
          content: const Text("Are you sure you want to log out?"),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: const Text("Cancel"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                  (route) => false,
                );
              },
              child: const Text("Proceed"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,

        actions: [
          InkWell(
            onTap: () {
              showLogoutDialog(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 5),
                  Text("Logout"),
                ],
              ),
            ),
          ),
        ],
      ),

      body: const Center(
        child: Text(
          "Welcome to Home Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}