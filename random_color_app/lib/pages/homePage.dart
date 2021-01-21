import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final rnd = math.Random();

  Color generateRnd() => Color(rnd.nextInt(0xffffffff));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          generateRnd();
        });
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: generateRnd(),
          body: Center(
            child: Text(
              "Hey there",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
