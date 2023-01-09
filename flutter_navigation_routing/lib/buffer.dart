import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBuffer extends StatelessWidget {
  const MyBuffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buffer"),
      ),
      body: Container(
        height: 100,
        width: 500,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'home');
          },
          child: Row(
            children: [
              Icon(
                Icons.add,
              ),
              Text("I need to go to home"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GNav(
        color: Colors.red,
        tabs: [
          GButton(
            icon: Icons.add,
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
          ),
          GButton(
            icon: Icons.local_activity,
          ),
          GButton(
            icon: Icons.wallet,
          ),
        ],
      ),
    );
  }
}
