import 'package:flutter/material.dart';
import 'package:navigasi/firstScreen.dart';
import 'package:navigasi/secondScreen.dart';


class thirdScreen extends StatelessWidget {
  const thirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 217, 0, 255),
        title: Text('Third Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) => secondScreen(),));
            },
            child: Text('Menuju Layar 2'),
          ),

           ElevatedButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) => firstScreen(),));
            },
            child: Text('Menuju Layar 1'),
          ),
        ],

      ),
    );
  }
}