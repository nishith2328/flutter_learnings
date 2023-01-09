import 'package:flutter/material.dart';
import '../util/notify_box.dart';
import '../util/todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _taskController = TextEditingController();

  List ToDoList = [
    ["Exercise", false],
    ["Practise coding", false],
    ["Go to gym", false],
    ["drink 3 litres  of water", false],
  ];

  void saveNewTask() {
    setState(
      () {
        ToDoList.add([_taskController.text, false]);
        _taskController.clear();
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      ToDoList.removeAt(index);
    });
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          Controller: _taskController,
          onSave: saveNewTask,
        );
      },
    );
  }

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      ToDoList[index][1] = !ToDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(
          "To Do List",
          style: Theme.of(context).textTheme.headline3,
        ),
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: ToDoList.length,
        itemBuilder: (context, index) {
          return ToDo(
            taskName: ToDoList[index][0],
            taskCompleted: ToDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
    );
  }
}
