import 'package:flutter/material.dart';
import 'package:flutter_application_1/email.dart';
import 'package:flutter_application_1/facebook.dart';
import 'package:flutter_application_1/google.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOptionsPage(),
    );
  }
}

class LoginOptionsPage extends StatelessWidget {
  const LoginOptionsPage({super.key});

  void showLoginSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              const Text(
                "Login With",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

          
          
              ListTile(
                leading: const Icon(Icons.g_mobiledata, color: Colors.grey),
                title: const Text("Continue with Google"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Googlepage()),);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Logged in with Google"),
                    ),
                  );
                },
              ),

      
              ListTile(
                leading: const Icon(Icons.facebook, color: Colors.blue),
                title: const Text("Continue with Facebook"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Facebookpage()),);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Logged in with Facebook"),
                    ),
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.email, color: Colors.grey),
                title: const Text("Continue with Email"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Emailpage()),);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Logged in with Email"),
                    ),
                  );
                },
              ),

              const SizedBox(height: 10),

              const Text(
                "Please select a login option",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modal Bottom Sheet Login"),
      ),

      body: Center(
        child: ElevatedButton(
          child: const Text("Open Login Options"),
          onPressed: () {
            showLoginSheet(context);
          },
        ),
      ),
    );
  }
}
