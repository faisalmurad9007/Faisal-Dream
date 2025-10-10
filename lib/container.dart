

import 'package:flutter/material.dart';

class Contn extends StatelessWidget {
  const Contn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Container') ,
     ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              SizedBox(height: 20,),
            Container(
                width: 150,
                height: 150,

              decoration: BoxDecoration(

                color: Colors.orangeAccent,
                gradient: LinearGradient(
                    colors:[Colors.blueGrey,
                    Colors.purple],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 7,
                    offset: Offset(10, 5),
                  ),
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 5,
                    offset: Offset(5, 10),
                  )
                ],

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone,size: 40,color: Colors.black,),
                  Text('Faisal',
                  style: TextStyle(
                    fontSize: 30,
                  ),),
                ],
              )
            ),
          ],
        ),
      )
    );
  }
}
