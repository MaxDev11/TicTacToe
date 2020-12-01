import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';

int xWins = 0;
int oWins = 0;
int draws = 0;

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
        Text('$xWins',
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
        Text('$draws',
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
        Text('$oWins',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ],
    );
