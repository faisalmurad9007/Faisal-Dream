import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          Image.asset('asset/Youtube-Logo-Transparent-PNG.png',
            height: 250,width: 250,
          ),
          Text('Login With Phone & Password'),
          SizedBox(height: 20,),


        ],
      ),
    );
  }
}
