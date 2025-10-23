import 'package:flutter/material.dart';
class CityCard extends StatelessWidget {
  final String img,title,rating;
  const CityCard({
    super.key,required this.img,required this.title, required this.rating
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Stack(

        children: [

          Container(

            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: NetworkImage(img)),
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
      ),
    );
  }
}