import 'package:flutter/material.dart';

class stack extends StatelessWidget {
  const stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blueAccent,
      title: Text('Stack'),
    ),

      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              SizedBox(height: 10,),
              Stack(
                children: [
                  Container(
                    color: Colors.red,
                      width: 200,
                      height: 200,
                  ),
                  Positioned(
                    top: 20,
                    bottom: 15,
                    left: 10,
                    right: 10,
                    child: Container(
                      color: Colors.green,
                      width: 150,
                      height: 150,
                    ),
                  ),
          Container(
            color: Colors.blue,
            width: 120,
            height: 120,
          ),
        
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage("https://www.istockphoto.com/photo/bald-man-smiling-at-camera-standing-with-arms-crossed-gm1485546774-511509987?utm_source=pixabay&utm_medium=affiliate&utm_campaign=sponsored_photo&utm_content=adp_topbanner-popular_media&utm_term=man+smiling"),
                  )
                ],
              ),
        
              Positioned(
                bottom: 15,
                  right: 5,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.red,
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  const CityCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(

          height: 200,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: NetworkImage('https://i.pinimg.com/originals/42/d3/fa/42d3fa4b4dc7fd3e2608dc0fa0bebf7f.jpg')),
          ),
          child: Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(10),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent,Colors.black26],

              ),
            ),
          ),
        ),
        Positioned(

          top: 10,
            left: 10,
          right: 10,
          child: Row
            (mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

           ElevatedButton(
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.white,
               ),
               onPressed: (){}, child: Text('⭐ 5.0',
           style: TextStyle(
             color: Colors.orange,
             fontWeight: FontWeight.bold,
             fontSize: 15,

           ),)),
              SizedBox(),

          ],),
        ),
        Positioned(

          bottom: 10,
          left: 150,
          right: 10,
          child: Row
            (mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('Bangladesh',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              SizedBox(),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,)),

            ],),
        ),
      ],
    );
  }
}
