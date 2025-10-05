import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Faisal Dream") ,
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('This Faisal Page',

            style: TextStyle(
              fontSize: 50,
              color: Colors.red,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.5,
              wordSpacing: 5,
            ),
          ),
          Text('This Faisal Page',

            style: TextStyle(
              fontSize: 50,
              color: Colors.red,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.5,
              wordSpacing: 5,
            ),
          ),
          Text('This Faisal Page',

            style: TextStyle(
              fontSize: 50,
              color: Colors.red,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.5,
              wordSpacing: 5,
            ),
          ),

          Text('This Faisal Page',

            style: TextStyle(
              fontSize: 50,
              color: Colors.red,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.5,
              wordSpacing: 5,
            ),
          ),
          Text('This Faisal Page',

            style: TextStyle(
              fontSize: 50,
              color: Colors.red,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.5,
              wordSpacing: 5,
            ),
          ),

        ],
      )
    );
  }
}
