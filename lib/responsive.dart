import 'package:flutter/material.dart';

class respon extends StatelessWidget {
  const respon({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Responsive',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white70),),
      ),
      body: Center(

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200, width: 200,
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
          
              ),
              SizedBox(height: 10,),
              Container(
                height: screenSize.height*0.25,
                width: screenSize.width*0.5,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
          
              ),
              SizedBox(height: 10,),
              Text('Hello World',
                style: TextStyle(fontSize: 30),),
              SizedBox(height: 10,),
              Text('Hello World',
                style: TextStyle(fontSize: .07*screenSize.width,
                color: Colors.greenAccent),),
            ],
          ),
        ),
      ),
    );
  }
}
