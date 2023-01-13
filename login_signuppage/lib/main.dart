import 'package:flutter/material.dart';
import 'package:login_signup_flutter/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup & login page',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
