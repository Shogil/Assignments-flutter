import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _textValue = 'Run the commnand';
  String _newText = 'Update your system';
  _clickHere() {
    setState(
      () {
        _textValue = _newText;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('One Click!'),
        ),
        body: Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color.fromARGB(255, 74, 154, 56),
              ),
            ),
            child: Text(_textValue),
            onPressed: _clickHere,
          ),
        ),
      ),
    );
  }
}
