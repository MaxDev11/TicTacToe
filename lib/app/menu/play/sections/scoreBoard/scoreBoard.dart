import 'package:flutter/material.dart';

int _xWins = 0;
int _oWins = 0;
int _draws = 0;

Widget get scoreBoard => Column(children: [
      Container(
          margin: EdgeInsets.only(top: 10, left: 63, right: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              playerScore,
              drawScore,
              botScore,
            ],
          )),
    ]);

Widget get playerScore => Column(
      children: <Widget>[
        Text('Wins',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        Text('$_xWins',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ],
    );

Widget get drawScore => Column(
      children: <Widget>[
        Text('Draws',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        Text('$_draws',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ],
    );

Widget get botScore => Column(
      children: <Widget>[
        Text('Wins',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        Text('$_oWins',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ],
    );
