import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trash_catch/main.dart';

class Spashscreen extends StatefulWidget {
  const Spashscreen({Key? key}) : super(key: key);
  @override
  State<Spashscreen> createState() => _SpashscreenState();
}

class _SpashscreenState extends State<Spashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Hello(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.teal,
          child: Center(
            child: Text(
              'Trash',
              style: TextStyle(
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          )),
    );
  }
}
