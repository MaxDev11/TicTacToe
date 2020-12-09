import 'package:flutter/material.dart';
import 'package:tictactoe/app_localizations.dart';

Widget statsBoard(
        String wins, String loses, String draws, BuildContext context) =>
    Column(children: [
      Container(
          child: Row(
        children: [
          playerScoreWin(wins, context),
          drawScore(draws, context),
          playerScoreLose(loses, context),
        ],
      )),
    ]);

Widget playerScoreWin(String wins, BuildContext context) => Container(
    margin: EdgeInsets.only(right: 10),
    child: Column(
      children: <Widget>[
        Text(AppLocalizations.of(context).translate('settingsWinsText'),
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

Widget drawScore(String draws, BuildContext context) => Container(
    margin: EdgeInsets.only(right: 10),
    child: Column(
      children: <Widget>[
        Text(AppLocalizations.of(context).translate('settingsDrawsText'),
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

Widget playerScoreLose(String loses, BuildContext context) => Container(
    margin: EdgeInsets.only(right: 10),
    child: Column(
      children: <Widget>[
        Text(AppLocalizations.of(context).translate('settingsLosesText'),
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
