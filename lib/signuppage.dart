import 'package:faisal_dream/Components/my_button.dart';
import 'package:faisal_dream/Components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';

class SignUpPage extends StatelessWidget {

 SignUpPage({super.key});

final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  //SignUserIn
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
          backgroundColor: Colors.grey[300],

          ),
          body: SafeArea(
            child: Center(
              child: Column(
                children: [
                   SizedBox(height: 50,),
                 //logo
                Icon(Icons.lock,
                size: 100,),
                //welcome back,
                  Text('Welcome Back! You\'ve Missed',
                  style:
                  TextStyle(color: Colors.black54,
                  fontSize: 16)),
                 SizedBox(height: 25,),
                  //user text field
                  MyTextfield(
                    controller:usernameController ,
                    hintText: 'User Name',
                    obscureText: false,

                  ),
                  SizedBox(height: 10,),
                 //password text
                  MyTextfield(

                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  SizedBox(height: 10,),
                //forget password
                Padding(
                  padding: const EdgeInsets.symmetric( horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot Password?',
                      style: TextStyle(color: Colors.black54),),
                    ],
                  ),
                ),
                  SizedBox(height: 10,),
                //signin button
                  MyButton(
                    onTap:signUserIn,
                  ),

                //or continue with

                //google & apple signin button

                //not a member?Register Now!

              ],),
            ),
          ),

        );
  }
}
