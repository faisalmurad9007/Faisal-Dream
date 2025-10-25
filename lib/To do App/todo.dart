import 'package:flutter/material.dart';

class ToDoAap extends StatelessWidget {
  const ToDoAap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text('To Do Aap'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child:
                  TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Your Task'
                  ),
                  )),
              ElevatedButton(onPressed: (){}, child: Text('Add')),
            ],
          )
        ],
      ),
    );
  }
}
