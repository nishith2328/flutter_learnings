import 'dart:ui';

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
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _tasks = <String>[];
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My To-Do List'),
        backgroundColor: Colors.grey,
      ),
      body: ListView.builder(
        itemCount: _tasks.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            value: _tasks[index].startsWith('x '),
            onChanged: (checked) {
              setState(() {
                if (checked != null && checked) {
                  _tasks[index] = 'x ${_tasks[index]}';
                } else {
                  _tasks[index] = _tasks[index].substring(2);
                }
              });
            },
            title: Text(_tasks[index].substring(2)),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final task = await showDialog<String>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Add Task'),
                  content: TextField(
                    controller: _textController,
                    autofocus: true,
                  ),
                  actions: [
                    FloatingActionButton(
                      backgroundColor: Colors.deepPurpleAccent,
                      child: Text('Cancel'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.deepPurpleAccent,
                      child: Text('Add'),
                      onPressed: () {
                        Navigator.pop(context, _textController.text);
                      },
                    ),
                  ],
                );
              },
            );

            if (task != null) {
              setState(() {
                _tasks.add(task);
              });
            }
          },
          backgroundColor: Colors.grey,
          child: Icon(Icons.add)),
    );
  }
}
