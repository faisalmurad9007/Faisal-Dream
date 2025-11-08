import 'package:flutter/material.dart';
import 'widget/BuildButton.dart'; // Make sure BuildButton.dart has the 3D version

class Calcalutor extends StatefulWidget {
  const Calcalutor({super.key});

  @override
  State<Calcalutor> createState() => _CalcalutorState();
}

class _CalcalutorState extends State<Calcalutor> {
  String _output = '0';
  String _input = '0';
  String _ope = '';
  double num1 = 0;
  double num2 = 0;
  bool isDark = false;

  List<Map<String, String>> _history = [];

  void buttonPress(String value) {
    setState(() {
      if (value == 'AC') {
        _output = '0';
        _input = '0';
        _ope = '';
        num1 = 0;
        num2 = 0;
      } else if (value == 'C') {
        _input = '0';
        _output = '0';
      } else if (value == '<') {
        if (_input.isNotEmpty && _input != '0') {
          _input = _input.substring(0, _input.length - 1);
          if (_input.isEmpty) _input = '0';
          _output = _input;
        }
      } else if (value == '%') {
        if (_input.isNotEmpty) {
          double currentValue = double.parse(_input);
          _input = (currentValue / 100).toString();
          _output = _input;
        }
      } else if (['+', '-', '*', '÷'].contains(value)) {
        num1 = double.parse(_input);
        _ope = value;
        _input = '';
      } else if (value == '=') {
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
        _history.add({'expression': '$num1 $_ope $num2', 'result': _output});
        _input = _output;
        _ope = '';
      } else {
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

  void _showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: isDark ? Colors.grey[900] : Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext ctx) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(
                isDark ? Icons.light_mode : Icons.dark_mode,
                color: isDark ? Colors.white : Colors.black,
              ),
              title: Text(
                isDark ? 'Light Mode' : 'Dark Mode',
                style: TextStyle(color: isDark ? Colors.white : Colors.black),
              ),
              onTap: () {
                setState(() {
                  isDark = !isDark;
                });
                Navigator.pop(ctx);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                color: isDark ? Colors.white : Colors.black,
              ),
              title: Text(
                'View History',
                style: TextStyle(color: isDark ? Colors.white : Colors.black),
              ),
              onTap: () {
                Navigator.pop(ctx);
                _showHistory(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _showHistory(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: isDark ? Colors.black87 : Colors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext ctx) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    'History',
                    style: TextStyle(
                      color: isDark ? Colors.white : Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.delete_forever, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        _history.clear();
                      });
                      Navigator.pop(ctx);
                    },
                  ),
                ],
              ),
              const Divider(),
              _history.isEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'No history yet',
                        style: TextStyle(
                          color: isDark ? Colors.white54 : Colors.black54,
                        ),
                      ),
                    )
                  : Column(
                      children: _history.asMap().entries.map((entry) {
                        int index = entry.key;
                        Map<String, String> item = entry.value;
                        return Card(
                          color: isDark ? Colors.grey[800] : Colors.grey[200],
                          child: ListTile(
                            title: Text(
                              item['expression']!,
                              style: TextStyle(
                                color: isDark ? Colors.white70 : Colors.black87,
                              ),
                            ),
                            subtitle: Text(
                              'Result: ${item['result']}',
                              style: TextStyle(
                                color: isDark ? Colors.white : Colors.black54,
                              ),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.edit,
                                    color: Colors.amber,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(ctx);
                                    _editHistory(index);
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.redAccent,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _history.removeAt(index);
                                    });
                                    Navigator.pop(ctx);
                                    _showHistory(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
            ],
          ),
        );
      },
    );
  }

  void _editHistory(int index) {
    TextEditingController exprController = TextEditingController(
      text: _history[index]['expression'],
    );
    TextEditingController resultController = TextEditingController(
      text: _history[index]['result'],
    );

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Edit History"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: exprController,
              decoration: const InputDecoration(labelText: 'Expression'),
            ),
            TextField(
              controller: resultController,
              decoration: const InputDecoration(labelText: 'Result'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _history[index] = {
                  'expression': exprController.text,
                  'result': resultController.text,
                };
              });
              Navigator.pop(ctx);
            },
            child: const Text("Save"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text("Cancel"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.grey[500],
      appBar: AppBar(
        title: const Text("Calculator"),
        backgroundColor: isDark ? Colors.grey[900] : Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () => _showMenu(context),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "$num1 $_ope $_input",
                      style: TextStyle(
                        color: isDark ? Colors.white70 : Colors.black54,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      _output,
                      style: TextStyle(
                        fontSize: 50,
                        color: isDark ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Button Rows
            Row(
              children: [
                BuildButton(
                  onclick: () => buttonPress('AC'),
                  text: 'AC',
                  color: Colors.redAccent,
                ),
                BuildButton(onclick: () => buttonPress('%'), text: '%'),
                BuildButton(onclick: () => buttonPress('.'), text: '.'),
                BuildButton(
                  onclick: () => buttonPress('<'),
                  text: '<',
                  color: Colors.green,
                ),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: () => buttonPress('7'), text: '7'),
                BuildButton(onclick: () => buttonPress('8'), text: '8'),
                BuildButton(onclick: () => buttonPress('9'), text: '9'),
                BuildButton(
                  onclick: () => buttonPress('÷'),
                  text: '÷',
                  color: Colors.green,
                ),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: () => buttonPress('4'), text: '4'),
                BuildButton(onclick: () => buttonPress('5'), text: '5'),
                BuildButton(onclick: () => buttonPress('6'), text: '6'),
                BuildButton(
                  onclick: () => buttonPress('*'),
                  text: '*',
                  color: Colors.green,
                ),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: () => buttonPress('1'), text: '1'),
                BuildButton(onclick: () => buttonPress('2'), text: '2'),
                BuildButton(onclick: () => buttonPress('3'), text: '3'),
                BuildButton(
                  onclick: () => buttonPress('-'),
                  text: '-',
                  color: Colors.green,
                ),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: () => buttonPress('C'), text: 'C'),
                BuildButton(onclick: () => buttonPress('0'), text: '0'),
                BuildButton(onclick: () => buttonPress('='), text: '='),
                BuildButton(
                  onclick: () => buttonPress('+'),
                  text: '+',
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
