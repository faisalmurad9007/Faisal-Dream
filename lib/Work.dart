import 'package:flutter/material.dart';
class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body:    SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children: <Widget>[
        
            // Other widgets in the Column
            Text('Ostad',
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),

            Container(
              alignment: Alignment.center,
              child:Text('Ostad',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),) ,

                height: 30,width: 80, color: Colors.grey),

        
            // The Stack widget
            Stack(
              children: [
                Image.asset('asset/2024-12-18T15-24-44.114Z-Untitled-1 (21).jpg',
                  height: 300,width: 415,),
                Container(
                  alignment: Alignment.center,

                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent,

                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 5,
                          offset: Offset(10, 5),
                        ),
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 2,
                          offset: Offset(1, 2),
                        )
                      ],
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Text('বাংলাদেশ শিখবে ',
                      style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,fontSize: 20),),
                    height: 20,
                    width: 150,
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 10,
                  right: 10,
                  top: 10,
                  child: Container(


                    alignment: Alignment.bottomLeft,
                    child: Text('Welcome',
                    style: TextStyle(color: Colors.white),),
                    height: 20,
                    width: 30,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  bottom: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Text('Thanks',
                    style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),

                    width: 150,
                  ),
                ),
              ],
            ),
        
            // More widgets in the Column
            Container(height: 50, color: Colors.lightBlue),
            Text('Footer'),
          ],
        ),
      ) ,
    );
  }
}
