import 'dart:js';

import 'package:flutter/material.dart';
import 'package:navigasi/firstScreen.dart';
import 'package:navigasi/secondScreen.dart';
import 'package:navigasi/thirdScreen.dart';

class secondScreen extends StatelessWidget {
  const secondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Second Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => thirdScreen(),
                  ));
            },
            child: Text('Menuju Layar 3'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => firstScreen(),
                  ));
            },
            child: Text('Menuju Layar 1'),
          ),
        ],
      ),
    );
  }
}
