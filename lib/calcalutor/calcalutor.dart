import 'package:flutter/material.dart';

import 'widget/BuildButton.dart';

class Calcalutor extends StatefulWidget {
  const Calcalutor({super.key});

  @override
  State<Calcalutor> createState() => _CalcalutorState();
}

class _CalcalutorState extends State<Calcalutor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Column(
                  children: [
                    Text(
                      '10+50',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    Container(
              
                      child: Text(
                        '60',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                BuildButton(onclick: () {  }, text: 'AC',),
                BuildButton(onclick: () {  }, text: '%',),
                BuildButton(onclick: () {  }, text: '.',),
                BuildButton(onclick: () {  }, text: '<',color: Colors.orange,),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: () {  }, text: '7',),
                BuildButton(onclick: () {  }, text: '8',),
                BuildButton(onclick: () {  }, text: '9',),
                BuildButton(onclick: () {  }, text: '/',color: Colors.orange,),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: () {  }, text: '4',),
                BuildButton(onclick: () {  }, text: '5',),
                BuildButton(onclick: () {  }, text: '6',),
                BuildButton(onclick: () {  }, text: '*',color: Colors.orange,),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: () {  }, text: '1',),
                BuildButton(onclick: () {  }, text: '2',),
                BuildButton(onclick: () {  }, text: '3',),
                BuildButton(onclick: () {  }, text: '-',color: Colors.orange,),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: () {  }, text: 'C',),
                BuildButton(onclick: () {  }, text: '0',),
                BuildButton(onclick: () {  }, text: '=',),
                BuildButton(onclick: () {  }, text: '+',color: Colors.orange,),
              ],
            ),

          ],
        ),
      ),
    );
  }
}


