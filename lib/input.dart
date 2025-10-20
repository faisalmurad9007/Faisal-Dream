import 'package:flutter/material.dart';

class input extends StatelessWidget {
  const input({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController mobileController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('Faisal Dream Input')),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('asset/Untitled-2.png',
                height: 150,width: 150,),
              SizedBox(height: 10),
              TextField(
                controller: mobileController,
                keyboardType: TextInputType.phone,
                maxLength: 11,
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(30),
                  fillColor: Colors.grey.shade200,
                  hintText: 'Enter Mobile Number',
                  hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                  helperText: '01912******',
                  helperStyle: TextStyle(fontSize: 15, color: Colors.blueGrey),
                  labelText: 'Mobile Number',
                  labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 17),
                ),
              ),
              SizedBox(height: 25),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  filled: true,
                  fillColor: Colors.orange.shade50,
                  hintText: 'Enter Your Password',
                  hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 17),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                height: 60,
          
                width: double.infinity,
          
                child: ElevatedButton(
                  onPressed: () {
                    print(mobileController.text);
                    print(passwordController.text);
                    mobileController.clear();
                    passwordController.clear();
                    if (passwordController.text.length < 6) {
                      print('Password Must Be 6 Character');
                    }
                    ;
                    if (mobileController.text.length < 11) {
                      print('Mobile Number Must Be 11 Character');
                    }
                    ;
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
