
import 'package:flutter/material.dart';



class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
            alignment: Alignment.bottomCenter,
            height: 170,
              decoration: BoxDecoration(color: Colors.yellowAccent),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize:MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                  Text('Ostad',
                  style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                  Text(' বাংলাদেশ শিখবে ',
                    style: TextStyle(color: Colors.black,fontSize: 20,
                        fontWeight: FontWeight.bold),),
                ]
                ,
                ),
              Row(
                children:  [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                    child:IconButton(
                      icon: Icon(Icons.search, size: 28,
                          color: Colors.white,),
                      onPressed: (){},
                    )),
                  SizedBox(width: 10,),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black),
                      child:IconButton(
                        icon: Icon(Icons.notifications, size: 28,
                          color: Colors.white,),
                        onPressed: (){},
                      )),


                ],
              )

              ],


            ),
          ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(25),
            children: [
              Text('Our Courses',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                backgroundColor: Colors.yellow,

              ),),

            SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Positioned(

                      child: Row(

                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                            children: [

                      
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
                                                backgroundColor: Colors.grey,
                                                fontSize: 10,fontWeight: FontWeight.bold,
                                              ),),
                                            SizedBox(width: 5,),
                                            Text('৬ সিট বাকি',
                      
                                              style: TextStyle(
                                                  backgroundColor: Colors.grey,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold
                      
                      
                                              ),),
                                            SizedBox(width: 10,),
                                            Text('৩৪ দিন বাকি',
                      
                                              style: TextStyle(
                                                  backgroundColor: Colors.grey,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold
                      
                      
                                              ),),
                                          ],),
                                        ),
                                        SizedBox(height: 10,),
                                        Text('App Development With Flutter',

                                          style: TextStyle(
                                            backgroundColor: Colors.white,
                                            fontSize: 8,fontWeight: FontWeight.bold,
                      
                                          ),),
                                        SizedBox(height: 10,),
                                        Text('বিস্তারিত দেখি',

                                          style: TextStyle(
                                            backgroundColor: Colors.grey,
                                            fontSize: 10,fontWeight: FontWeight.bold,

                                          ),),
                                      ],
                                    ),
                                  )
                              ),
                              SizedBox(height: 10,width: 10,),
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
                                        Image.asset('asset/2025-01-23T12-32-14.452Z-Untitled-1 (1) (1).jpg'),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(children: [
                                            Text('ব্যাচ ৯',
                                              style: TextStyle(
                                                backgroundColor: Colors.grey,
                                                fontSize: 10,fontWeight: FontWeight.bold,
                                              ),),
                                            SizedBox(width: 5,),
                                            Text('১২ সিট বাকি',
                      
                                              style: TextStyle(
                                                  backgroundColor: Colors.grey,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold
                      
                      
                                              ),),
                                            SizedBox(width: 10,),
                                            Text('৪ দিন বাকি',
                      
                                              style: TextStyle(
                                                  backgroundColor: Colors.grey,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold
                      
                      
                                              ),),
                                          ],),
                                        ),
                                        SizedBox(height: 10,),
                                        Text('Mastering DevOps',
                                          style: TextStyle(


                                            backgroundColor: Colors.white,
                                            fontSize: 8,fontWeight: FontWeight.bold,

                                          ),),
                                        SizedBox(height: 10,),
                                        Text('বিস্তারিত দেখি',
                      
                                          style: TextStyle(
                                            backgroundColor: Colors.grey,
                                            fontSize: 10,fontWeight: FontWeight.bold,
                      
                                          ),),
                                      ],
                                    ),
                                  )
                              ),
                              SizedBox(height: 10,width: 10,),
                      
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                      
                              children: [

                      
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
                                          Image.asset('asset/2024-12-18T15-24-44.114Z-Untitled-1 (21).jpg'),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(children: [
                                              Text('ব্যাচ ৭',
                                                style: TextStyle(
                                                  backgroundColor: Colors.grey,
                                                  fontSize: 10,fontWeight: FontWeight.bold,
                                                ),),
                                              SizedBox(width: 5,),
                                              Text('১৬ সিট বাকি',
                      
                                                style: TextStyle(
                                                    backgroundColor: Colors.grey,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold
                      
                      
                                                ),),
                                              SizedBox(width: 10,),
                                              Text('১৫ দিন বাকি',
                      
                                                style: TextStyle(
                                                    backgroundColor: Colors.grey,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold
                      
                      
                                                ),),
                                            ],),
                                          ),
                                          SizedBox(height: 10,),
                                          Text('SQA Manual & Automated Testing',
                                            style: TextStyle(
                                              backgroundColor: Colors.white,
                                              fontSize: 8,fontWeight: FontWeight.bold,
                      
                                            ),),
                                          SizedBox(height: 10,),
                                          Text('বিস্তারিত দেখি',
                      
                                            style: TextStyle(
                                              backgroundColor: Colors.grey,
                                              fontSize: 10,fontWeight: FontWeight.bold,
                      
                                            ),),
                                        ],
                                      ),
                                    )
                                ),
                                SizedBox(height: 10,width: 10,),
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
                                          color: Colors.grey,
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
                                          Image.asset('asset/2025-06-26T19-41-53.112Z-react-native-thumb.jpg'),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(children: [
                                              Text('ব্যাচ ১৪',

                                                style: TextStyle(
                                                  backgroundColor: Colors.grey,
                                                  fontSize: 10,fontWeight: FontWeight.bold,
                                                ),),
                                              SizedBox(width: 5,),
                                              Text('১০ সিট বাকি',
                      
                                                style: TextStyle(
                                                    backgroundColor: Colors.grey,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold
                      
                      
                                                ),),
                                              SizedBox(width: 10,),
                                              Text('১৪ দিন বাকি',
                      
                                                style: TextStyle(
                                                    backgroundColor: Colors.grey,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold
                      
                      
                                                ),),
                                            ],),
                                          ),
                                          SizedBox(height: 10,),
                                          Text('App Development With React Native',
                                            style: TextStyle(
                                              backgroundColor: Colors.white,
                                              fontSize: 8.5,fontWeight: FontWeight.bold,
                      
                                            ),),
                                          SizedBox(height: 10,),
                                          Text('বিস্তারিত দেখি',
                      
                                            style: TextStyle(
                                              backgroundColor: Colors.grey,
                                              fontSize: 10,fontWeight: FontWeight.bold,
                      
                                            ),),
                                        ],
                                      ),
                                    )
                                ),
                                SizedBox(height: 10,width: 10,),

                      
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              )

            ],
          ),
        )
        ],

      ),
    );
  }
}
