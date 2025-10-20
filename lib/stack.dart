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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
    );
  }
}
