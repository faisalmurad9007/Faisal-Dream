import 'dart:ffi';

import 'package:flutter/material.dart';

import 'widget/BuildButton.dart';

class Calcalutor extends StatefulWidget {
  const Calcalutor({super.key});

  @override
  State<Calcalutor> createState() => _CalcalutorState();
}

class _CalcalutorState extends State<Calcalutor> {
  String _output ='0';
  String _input ='0';
  String _ope ='';
  double num1 = 0;
  double num2 = 0;
  bool isPercentageActive = false;

  void buttonPress(String value) {
    print('buttonPressed $value');

    setState(() {
      // ALL CLEAR
      if (value == 'AC') {
        _output = '0';
        _input = '0';
        _ope = '';
        num1 = 0;
        num2 = 0;
        isPercentageActive = false;
      }
      // CLEAR CURRENT ENTRY
      else if (value == 'C') {
        _input = '0';
        _output = '0';
      }
      // BACKSPACE
      else if (value == '<') {
        if (_input.isNotEmpty && _input != '0') {
          _input = _input.substring(0, _input.length - 1);
          if (_input.isEmpty) _input = '0';
          _output = _input;
        }
      }
      // PERCENTAGE
      else if (value == '%') {
        if (_input.isNotEmpty) {
          double currentValue = double.parse(_input);
          _input = (currentValue / 100).toString();
          _output = _input;
          isPercentageActive = true;
        }
      }
      // OPERATORS
      else if (['+', '-', '*', '÷'].contains(value)) {
        num1 = double.parse(_input);
        _ope = value;
        _input = '';
        return;
      }
      // EQUALS
      else if (value == '=') {
        num2 = double.parse(_input);
        if (_ope == '+') {
          _output = (num1 + num2).toString();
        } else if (_ope == '-') {
          _output = (num1 - num2).toString();
        } else if (_ope == '*') {
          _output = (num1 * num2).toString();
        } else if (_ope == '÷') {
          _output = num2 != 0 ? (num1 / num2).toString() : 'Error';
        }
        _input = _output;
        _ope = '';
      }
      // NUMBERS / DECIMAL
      else {
        if (value == '.' && _input.contains('.')) return;
        if (_input == '0' && value != '.') {
          _input = value;
        } else {
          _input += value;
        }
        _output = _input;
      }
    });
  }



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
                      '$num1 $_ope $_input',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      _output,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                BuildButton(onclick: () =>buttonPress('AC'), text: 'AC',),
                BuildButton(onclick: () =>buttonPress('%'), text: '%',),
                BuildButton(onclick: () =>buttonPress('.'), text: '.',),
                BuildButton(onclick: () =>buttonPress('<'), text: '<',color: Colors.green,),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: ()  =>buttonPress('7'), text: '7',),
                BuildButton(onclick: () =>buttonPress('8'), text: '8',),
                BuildButton(onclick: () =>buttonPress('9'), text: '9',),
                BuildButton(onclick: () =>buttonPress('÷'), text: '÷',color: Colors.green,),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: ()  =>buttonPress('4'), text: '4',),
                BuildButton(onclick: ()  =>buttonPress('5'), text: '5',),
                BuildButton(onclick: ()  =>buttonPress('6'), text: '6',),
                BuildButton(onclick: ()  =>buttonPress('*'), text: '*',color: Colors.green,),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: ()  =>buttonPress('1'), text: '1',),
                BuildButton(onclick: ()  =>buttonPress('2'), text: '2',),
                BuildButton(onclick: ()  =>buttonPress('3'), text: '3',),
                BuildButton(onclick: ()  =>buttonPress('-'), text: '-',color: Colors.green,),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: ()  =>buttonPress('C'), text: 'C',),
                BuildButton(onclick: ()  =>buttonPress('0'), text: '0',),
                BuildButton(onclick: ()  =>buttonPress('='), text: '=',),
                BuildButton(onclick: ()  =>buttonPress('+'), text: '+',color: Colors.green,),
              ],
            ),

          ],
        ),
      ),
    );
  }
}


