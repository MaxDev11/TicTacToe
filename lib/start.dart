import 'dart:async';
import 'package:flutter/material.dart';
import 'menu/menu.dart';
import 'colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MenuPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: charlestonGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 230,
              height: 230,
              decoration:
                  BoxDecoration(color: davysGrey, shape: BoxShape.circle),
              margin: EdgeInsets.only(right: 50, left: 50),
              child: Center(
                  child: Text(
                'TicTacToe',
                style: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    );
  }
}
