import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.5),

      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(color: Colors.black,
      ),

      child: Center(
        child: Text('Sign In',


        style: TextStyle(color: Colors.white,

        fontSize: 25,
        fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
