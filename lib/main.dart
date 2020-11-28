import 'package:flutter/material.dart';
import 'start.dart';
import 'colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicTacToe',
      theme: ThemeData(
        fontFamily: 'Righteous',
        backgroundColor: charlestonGreen,
        primaryColor: charlestonGreen,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
