import 'package:faisal_dream/gridview.dart';
import 'package:faisal_dream/stack.dart';
import 'package:faisal_dream/theme.dart';
import 'package:flutter/material.dart';

import 'ContactCard.dart';
import 'container.dart';
import 'flist.dart';
import 'home.dart';
import 'input.dart';
import 'login.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
        //scaffoldBackgroundColor: Colors.blueGrey.shade200,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          )
        ),
      inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),

      ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red,width: 2),
        ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.orange,width: 3),
          ),
        hintStyle: TextStyle(
          color: Colors.deepPurple,
        ),

      ),
        textTheme: TextTheme(
         displayMedium: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.bold,
         )
        ),
      ),

      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                )
            )
        ),
      ),
      title: 'Faisal Dream',
      home: ThemeTest(),
      initialRoute: 'Stack',
      routes: {
        'home': (context)=>Home(),
        'input': (context)=>input(),
        'LoginPage': (context)=>LoginPage(),
        'List': (context)=>FList(),
        'ContactCard': (context)=>ContactCard(name: 'Faisal', phoneNumber: '+8801912697055',),
        'Stack': (context)=>stack(),
      },
    );
  }
}
