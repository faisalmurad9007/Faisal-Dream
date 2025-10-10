import 'package:faisal_dream/dashboard.dart';
import 'package:faisal_dream/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('asset/Youtube-Logo-Transparent-PNG.png',
                height: 250,width: 250,
              ),
              Text('Login With Phone & Password'),
              SizedBox(height: 20,),
              Form(
                key: formKey,
                child: Column(
                  children: [
                     Text('Phone Number'),
                    SizedBox(height: 10,),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      maxLength: 11,
                      style: const TextStyle(color: Colors.lightGreen),
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        border: OutlineInputBorder(
          
                        )
                      ),
                      validator: (value){
                        if (value == null || value.isEmpty ) {
                          return 'Please Enter Valid Phone Number';
                        } else if(value.length !=11){
                          return 'Please Enter Correct Phone Number ';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      maxLength: 8,
                      style: const TextStyle(color: Colors.lightGreen),
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
          
                          )
                      ),
                      validator: (value){
                        if (value == null || value.isEmpty ){
                          return 'Please Enter Password';
                        } else if (value.length<=6){
                          return 'Password Must Be At Least 6 Character';
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height:20),
                    SizedBox(
                      width: 300,
                        child: ElevatedButton(onPressed: (){
                          if(formKey.currentState!.validate()){
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) => Home()));
                          }
                        }, child: Text('Submit'))),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> Dashboard()));
                    }, child: Text('Dashboard')),
                  ],
                ),
              )
          
          
            ],
          ),
        ),
      ),
    );
  }
}
