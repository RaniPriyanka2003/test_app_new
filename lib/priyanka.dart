import 'package:flutter/material.dart';

class Priyanka extends StatelessWidget {
  const Priyanka({Key? key}) : super(key: key);
  @override
  Widget
   build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.blueGrey, title: Text('WELCOME')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'username',
                style: TextStyle(fontSize: 29, color: Colors.redAccent),
              ),
              Image.asset('assets/user.png'),
              Image.asset('assets/user.png'),
              Text(
                'username',
                style: TextStyle(fontSize: 29, color: Colors.redAccent),
              ),
              Text(
                'username',
                style: TextStyle(fontSize: 29, color: Colors.redAccent),
              ),
              Text(
                'username',
                style: TextStyle(fontSize: 29, color: Colors.redAccent),
              ),
              Text(
                'username',
                style: TextStyle(fontSize: 29, color: Colors.redAccent),
              ),
              Text(
                'username',
                style: TextStyle(fontSize: 29, color: Colors.redAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}