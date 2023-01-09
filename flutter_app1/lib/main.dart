import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$count"),
            Image.asset('assets/nature.jpg'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          setState(
            () {
              count++;
            },
          );
        }),
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
