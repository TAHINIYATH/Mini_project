import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  PageController controller = PageController();
  final List<Widget> text = [
    Center(
      child: Text('This is a home page'),
    ),
    Center(
      child: Text('This is levels page'),
    ),
    Center(
      child: Text('This is messages page'),
    ),
    Center(
      child: Text('This is trucks page'),
    ),
  ];

  List<Color> colors = [
    Colors.grey.shade100,
    Colors.blueGrey.shade100,
    Colors.grey.shade400,
    Colors.teal.shade100
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text('Trash Catch')),
      ),
      body: PageView.builder(
        itemCount: 4,
        controller: controller,
        onPageChanged: (page) {
          setState(() {
            _index = page;
          });
        },
        itemBuilder: (context, position) {
          return Container(
            color: colors[position],
            child: Center(child: text[position]),
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          color: Colors.teal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 9.0),
            child: GNav(
              backgroundColor: Colors.teal,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.teal.shade300,
              padding: EdgeInsets.all(16),
              gap: 8,
              tabs: [
                GButton(icon: Icons.home, text: 'Home'),
                GButton(icon: Icons.leaderboard_rounded, text: 'Level'),
                GButton(icon: Icons.message, text: 'Messages'),
                GButton(icon: Icons.fire_truck, text: 'Truck'),
              ],
              selectedIndex: _index,
              onTabChange: (index) {
                setState(() {
                  _index = index;
                });
                controller.jumpToPage(index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
