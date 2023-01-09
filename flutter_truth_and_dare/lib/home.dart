// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:truth_and_dare/cards.dart';
import 'dart:math';

var rnd = Random();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  void _incrementCounter() {
    setState(() {
      count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          "Truth and Dare",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IndexedStack(
              index: rnd.nextInt(9),
              children: [
                QuestionCards(
                  height: 300.0,
                  width: 300.0,
                  questionName: "What are your hobbies?",
                  Color: Colors.cyan,
                ),
                // ignore: prefer_const_constructors
                QuestionCards(
                  height: 295.0,
                  width: 295.0,
                  Color: Colors.red,
                  questionName: "do headstand for 3 min",
                ),
                QuestionCards(
                  height: 290.0,
                  width: 290.0,
                  Color: Colors.green,
                  questionName: "call to your loved one",
                ),
                QuestionCards(
                  height: 290.0,
                  width: 290.0,
                  Color: Colors.yellow,
                  questionName: "tell me your secret",
                ),
                QuestionCards(
                  height: 290.0,
                  width: 290.0,
                  Color: Colors.amber,
                  questionName: "Are you scared of ghosts?",
                ),
                QuestionCards(
                  height: 290.0,
                  width: 290.0,
                  Color: Colors.blue[900],
                  questionName: "Do you code daily?",
                ),
                QuestionCards(
                  height: 290.0,
                  width: 290.0,
                  Color: Colors.brown,
                  questionName: "pay for the pizza!",
                ),
                QuestionCards(
                  height: 290.0,
                  width: 290.0,
                  Color: Colors.pink,
                  questionName: "bark in public !",
                ),
                QuestionCards(
                  height: 290.0,
                  width: 290.0,
                  Color: Colors.red[200],
                  questionName: "with whom you chatted last on your phone?",
                ),
                QuestionCards(
                  height: 290.0,
                  width: 290.0,
                  Color: Colors.yellow[700],
                  questionName: "Buy me a phone !",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 60,
                  width: 150,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () {
                      _incrementCounter();
                    },
                    child: Text(
                      "Completed",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 130,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () {
                      _decrementCounter();
                    },
                    child: Text(
                      "Forfeit",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 130,
                  color: Colors.blue[500],
                  child: Center(
                    child: Text(
                      '$count',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
