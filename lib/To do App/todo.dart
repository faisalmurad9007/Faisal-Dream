import 'package:flutter/material.dart';

class ToDoAap extends StatefulWidget {
  const ToDoAap({super.key});

  @override
  State<ToDoAap> createState() => _TodoState();
}

class _TodoState extends State<ToDoAap> {
  TextEditingController taskController = TextEditingController();
  List<String> tasks = [];

  addTask() {
    final task = taskController.text;
    if (task.isNotEmpty) {
      setState(() {
        tasks.add(taskController.text);
        taskController.clear();
      });
    } else {}
  }

  updateTask(String value, int index) {
    if (value.isNotEmpty) {
      setState(() {
        tasks[index] = value;
      });
    } else {}
  }

  deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  editTask(int index) {
    final controller = TextEditingController(text: tasks[index]);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit Task'),
        content: TextField(controller: controller),
        actions: [
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              updateTask(controller.text, index);
              Navigator.pop(context);
            },
            child: Text('Update'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.yellow, title: Text('To Do Aap')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: taskController,
                    decoration: InputDecoration(labelText: 'Enter Your Task'),
                  ),
                ),

                Container(
                decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.yellow,),
                  child: IconButton(onPressed:addTask,
                       iconSize: 20,
                       color: Colors.black,
                       icon: Icon(Icons.add_box_rounded)),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(tasks[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            editTask(index);
                          },
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            deleteTask(index);
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
