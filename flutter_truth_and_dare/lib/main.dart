import 'package:flutter/material.dart';
import 'package:truth_and_dare/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: "Truth and dare game ",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
