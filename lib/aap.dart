import 'package:flutter/material.dart';

import 'home.dart';
import 'input.dart';
import 'login.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Faisal Dream',
      home: LoginPage(),

    );
  }
}
