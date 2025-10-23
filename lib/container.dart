

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

                color: Colors.yellowAccent,

                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 7,
                    offset: Offset(10, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 5,
                    offset: Offset(5, 10),
                  )
                ],

              ),
              child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('asset/2024-12-18T15-22-42.948Z-Flutter-Thumbnail.jpg'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Text('ব্যাচ ৪',
                    style: TextStyle(
                      backgroundColor: Colors.white10,
                      fontSize: 10,fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(width: 5,),
                  Text('৬ সিট বাকি',

                    style: TextStyle(
                        backgroundColor: Colors.white10,
                      fontSize: 10,
                      fontWeight: FontWeight.bold


                    ),),
                  SizedBox(width: 10,),
                  Text('৩৪ দিন বাকি',

                    style: TextStyle(
                        backgroundColor: Colors.white10,
                        fontSize: 10,
                        fontWeight: FontWeight.bold


                    ),),
                ],),
              ),
                    Text('Full Stack Web Development',
                    style: TextStyle(
                      backgroundColor: Colors.white10,
                      fontSize: 10,fontWeight: FontWeight.bold,

                    ),),
                    SizedBox(height: 10,),
                    Text('বিস্তারিত দেখি',

                      style: TextStyle(
                        backgroundColor: Colors.white,
                        fontSize: 10,fontWeight: FontWeight.bold,

                      ),),
                  ],
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}
