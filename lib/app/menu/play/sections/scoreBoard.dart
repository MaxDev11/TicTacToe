import 'package:flutter/material.dart';

Widget scoreBoard(int pScore, int spScore, int draws) => Column(children: [
      Container(
          margin: EdgeInsets.only(top: 10, left: 63, right: 62),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              playerScore(pScore),
              drawScore(draws),
              secondPlayerScore(spScore),
            ],
          )),
    ]);

Widget playerScore(int pScore) => Column(
      children: <Widget>[
        Text('Wins',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        Text('$pScore',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ],
    );

Widget drawScore(int draws) => Column(
      children: <Widget>[
        Text('Draws',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        Text('$draws',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ],
    );

Widget secondPlayerScore(spScore) => Column(
      children: <Widget>[
        Text('Wins',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        Text('$spScore',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ],
    );
