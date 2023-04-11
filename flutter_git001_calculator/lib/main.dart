import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      theme: ThemeData.dark().copyWith(
//        scaffoldBackgroundColor: darkBlue,
//      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: scr006Route(),
        ),
      ),
    );
  }
}

class scr006Route extends StatefulWidget {
  const scr006Route({Key? key}) : super(key: key);

  @override
  State<scr006Route> createState() => _scr006RouteState();
}

class _scr006RouteState extends State<scr006Route> {
  String _output = "0";
  String _input = "";
  double _num1 = 0.0;
  double _num2 = 0.0;
  String _operation = "";

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        _output = "0";
        _input = "";
        _num1 = 0.0;
        _num2 = 0.0;
        _operation = "";
      } else if (buttonText == "+" || buttonText == "-" || buttonText == "x" || buttonText == "/") {
        _num1 = double.parse(_input);
        _operation = buttonText;
        _output = "0";
        _input = "";
      } else if (buttonText == ".") {
        if (_input.contains(".")) {
          return;
        } else {
          _input = _input + buttonText;
          _output = _input;
        }
      } else if (buttonText == "=") {
        _num2 = double.parse(_input);
        if (_operation == "+") {
          _output = (_num1 + _num2).toStringAsFixed(2);
        }
        if (_operation == "-") {
          _output = (_num1 - _num2).toStringAsFixed(2);
        }
        if (_operation == "x") {
          _output = (_num1 * _num2).toStringAsFixed(2);
        }
        if (_operation == "/") {
          _output = (_num1 / _num2).toStringAsFixed(2);
        }
        _num1 = 0.0;
        _num2 = 0.0;
        _input = "";
        _operation = "";
      } else {
        _input = _input + buttonText;
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Basic Calculator"),
        ),
        body:Center(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                children: [
                  Text(
                    _output,
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Futura',
                      color: Colors.green,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(4),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
        //                color: Colors.blue,
                        border: Border.all(),
                    ),
                    child: TextButton(
                      child: const Text(
                        '1',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () => _buttonPressed('1'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    width: 50,
                    height: 50,
//              decoration: BoxDecoration(
//                color: Colors.blue,
//                border: Border.all(),
//              ),
                    child: TextButton(
                      child: const Text(
                        '2',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () => _buttonPressed('2'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    width: 50,
                    height: 50,
//              decoration: BoxDecoration(
//                color: Colors.blue,
//                border: Border.all(),
//              ),
                    child: TextButton(
                      child: const Text(
                        '3',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () => _buttonPressed('3'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(4),
                    width: 50,
                    height: 50,
//              decoration: BoxDecoration(
//                color: Colors.blue,
//                border: Border.all(),
//              ),
                    child: TextButton(
                      child: const Text(
                        '4',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () => _buttonPressed('4'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    width: 50,
                    height: 50,
//              decoration: BoxDecoration(
//                color: Colors.blue,
//                border: Border.all(),
//              ),
                    child: TextButton(
                      child: const Text(
                        '5',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () => _buttonPressed('5'),

                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    width: 50,
                    height: 50,
//              decoration: BoxDecoration(
//                color: Colors.blue,
//                border: Border.all(),
//              ),
                    child: TextButton(
                      child: const Text(
                        '6',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () => _buttonPressed('6'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(4),
                    width: 50,
                    height: 50,
//              decoration: BoxDecoration(
//                color: Colors.blue,
//                border: Border.all(),
//              ),
                    child: TextButton(
                      child: const Text(
                        '7',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () => _buttonPressed('7'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    width: 50,
                    height: 50,
//              decoration: BoxDecoration(
//                color: Colors.blue,
//                border: Border.all(),
//              ),
                    child: TextButton(
                      child: const Text(
                        '8',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () => _buttonPressed('8'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    width: 50,
                    height: 50,
//              decoration: BoxDecoration(
//                color: Colors.blue,
//                border: Border.all(),
//              ),
                    child: TextButton(
                      child: const Text(
                        '9',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () => _buttonPressed('9'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(4),
                    width: 50,
                    height: 50,
//              decoration: BoxDecoration(
//                color: Colors.blue,
//                border: Border.all(),
//              ),
                    child: TextButton(
                      child: const Text(
                        '+',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () => _buttonPressed('+'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    width: 50,
                    height: 50,
//              decoration: BoxDecoration(
//                color: Colors.blue,
//                border: Border.all(),
//              ),
                    child: TextButton(
                      child: const Text(
                        '-',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () => _buttonPressed('-'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4),
                    width: 50,
                    height: 50,
//              decoration: BoxDecoration(
//                color: Colors.blue,
//                border: Border.all(),
//              ),
                    child: TextButton(
                      child: const Text(
                        '=',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () => _buttonPressed('='),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        )
    );
  }
}
