import 'package:faisal_dream/Grid.dart';
import 'package:faisal_dream/Work.dart';
import 'package:faisal_dream/calcalutor/calcalutor.dart';
import 'package:faisal_dream/signuppage.dart';
import 'package:faisal_dream/responsive.dart';
import 'package:faisal_dream/stack.dart';
import 'package:faisal_dream/theme.dart';
import 'package:faisal_dream/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';

import 'Assignment.dart';
import 'Class Stack.dart';
import 'ContactCard.dart';

import 'HScreen.dart';
import 'To do App/todo.dart';
import 'Widget/citycard1.dart';
import 'Wscreen.dart';
import 'container.dart';
import 'flist.dart';
import 'heropage.dart';
import 'home.dart';
import 'input.dart';
import 'login.dart';
import 'ownwidget.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        brightness: Brightness.light,
        primaryColor: Colors.blueGrey,
        primarySwatch: Colors.deepPurple,
        //scaffoldBackgroundColor: Colors.blueGrey.shade200,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.grey,
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
      initialRoute: 'Calcalutor',
      routes: {
        'home': (context)=>Home(),
        'input': (context)=>input(),
        'LoginPage': (context)=>LoginPage(),
        'List': (context)=>FList(),
        'ContactCard': (context)=>ContactCard(name: 'Faisal', phoneNumber: '+8801912697055',),
        'Stack': (context)=>stack(),
        'OwnWidget': (context)=>OwnWidget(),
        'CityCard': (context)=>CityCard(),
        'Class2Stack': (context)=>Class2Stack(),
        'HeroPage': (context)=>HeroPage(),
        'OWidget': (context)=>OWidget(),
        'Assignment': (context)=>Assignment(),
        'Container': (context)=>Contn(),
        'GridView': (context)=>GridV(),
        'Work': (context)=>Work(),
        'HomeScreen': (context)=>HomeScreen(),
        'WelcomeScreen': (context)=>WelcomeScreen(),
        'Responsive': (context)=>respon(),
        'SignUpPage': (context)=>SignUpPage(),
        'ToDoAap': (context)=>ToDoAap(),
        'Calcalutor': (context)=>Calcalutor(),


        'CityCard1': (context)=>CityCard1(img: 'https://media.istockphoto.com/id/1347665170/photo/london-at-sunset.jpg?s=612x612&w=0&k=20&c=MdiIzSNKvP8Ct6fdgdV3J4FVcfsfzQjMb6swe2ybY6I=', title: 'London', rating: '4.8'),
      },
    );
  }
}
