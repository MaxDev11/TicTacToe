import 'package:flutter/material.dart';

Widget statsBoard(String wins, String loses, String draws) => Column(children: [
      Container(
          child: Row(
        children: [
          playerScoreWin(wins),
          drawScore(draws),
          playerScoreLose(loses),
        ],
      )),
    ]);

Widget playerScoreWin(String wins) => Container(
    margin: EdgeInsets.only(right: 10),
    child: Column(
      children: <Widget>[
        Text('Wins',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        Text('$wins',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ],
    ));

Widget drawScore(String draws) => Container(
    margin: EdgeInsets.only(right: 10),
    child: Column(
      children: <Widget>[
        Text('Draws',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        Text('$draws',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ],
    ));

Widget playerScoreLose(String loses) => Container(
    margin: EdgeInsets.only(right: 10),
    child: Column(
      children: <Widget>[
        Text('loses',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        Text('$loses',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ],
    ));
