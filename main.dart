import 'package:flutter/material.dart';
import 'package:trash_catch/spash_screen.dart';

void main() {
  runApp(Rootwidget());
}

class Rootwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Spashscreen(),
    );
  }
}

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Text(
              '1st page',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.purple,
      ),
    ));
  }
}
