import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:trash_catch/pages/home.dart';
import 'package:trash_catch/pages/level.dart';
import 'package:trash_catch/pages/message.dart';
import 'package:trash_catch/pages/truck.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trash Catch',
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = const [
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(
      Icons.bar_chart,
      size: 30,
    ),
    Icon(
      Icons.message_rounded,
      size: 30,
    ),
    Icon(
      Icons.fire_truck_rounded,
      size: 30,
    )
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(
            child: const Text('Trash Catch',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold))),
        backgroundColor: Colors.blue[300],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(
          color: Colors.blue,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const Intro();
        break;
      case 1:
        widget = const Level();
        break;
      case 2:
        widget = const Message();
      case 3:
        widget = const Truck();
      default:
        widget = const Intro();
        break;
    }
    return widget;
  }
}
