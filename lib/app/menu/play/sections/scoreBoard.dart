import 'package:flutter/material.dart';
import 'package:tictactoe/app_localizations.dart';

Widget scoreBoard(
        String wins, String wins2, String draws, BuildContext context) =>
    Column(children: [
      Container(
          margin: EdgeInsets.only(top: 10, left: 63, right: 62),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              playerScore(wins, context),
              drawScore(draws, context),
              secondPlayerScore(wins2, context),
            ],
          )),
    ]);

Widget playerScore(String wins, BuildContext context) => Column(
      children: <Widget>[
        Text(AppLocalizations.of(context).translate('winsText'),
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        Text('$wins',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ],
    );

Widget drawScore(String draws, BuildContext context) => Column(
      children: <Widget>[
        Text(AppLocalizations.of(context).translate('drawsText'),
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

Widget secondPlayerScore(String wins2, BuildContext context) => Column(
      children: <Widget>[
        Text(AppLocalizations.of(context).translate('winsText'),
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        Text('$wins2',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ],
    );
