import 'package:flutter/material.dart';

class ProfilePictureExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Picture")),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.all(4), // Border thickness
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue, // Border color
                  width: 3,           // Border width
                ),
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://png.pngtree.com/png-clipart/20191120/original/pngtree-outline-user-icon-png-image_5045523.jpg'),
                // Your image URL
              ),
            ),
  // Edit Icon
  Positioned(
    bottom: 0,
    right: 0,
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          print("Edit button tapped");
        },
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    ),
  ),
],
        ),
      ),
    );
  }
}
