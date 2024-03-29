import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: const [
          Text(
            'Chat bot',
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 100,
          ),
          CircleAvatar(
            radius: 70,
            child: Icon(
              Icons.message_rounded,
              size: 120,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            'Let\'s chat',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
