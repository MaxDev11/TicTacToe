import 'package:flutter/material.dart';

Widget statsBoard(int pScore, int spScore, int draws) => Column(children: [
      Container(
          child: Row(
        children: [
          playerScore(pScore),
          drawScore(draws),
          secondPlayerScore(spScore),
        ],
      )),
    ]);

Widget playerScore(int pScore) => Container(
    margin: EdgeInsets.only(right: 10),
    child: Column(
      children: <Widget>[
        Text('Wins',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        Text('$pScore',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ],
    ));

Widget drawScore(int draws) => Container(
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

Widget secondPlayerScore(spScore) => Container(
    margin: EdgeInsets.only(right: 10),
    child: Column(
      children: <Widget>[
        Text('Wins',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        Text('$spScore',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ],
    ));
