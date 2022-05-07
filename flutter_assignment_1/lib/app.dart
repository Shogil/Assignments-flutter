import 'package:flutter/material.dart';

class App extends StatelessWidget {
  String displayText;
  App(this.displayText);
  @override
  Widget build(BuildContext context) {
    return Text(
      displayText,
      style: TextStyle(fontSize: 25),
    );
  }
}
