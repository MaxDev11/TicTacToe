import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';

Widget playerOneInfo(
        Function text, Function buildNameField, Function buildRankField) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Image.asset('assets/img/Player1_settings.png'),
          ),
        ]),
        Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text("Name", 24.0, 8.0),
            buildNameField(),
            text("Rank", 24.0, 8.0),
            buildRankField(),
          ],
        )),
      ],
    );

Widget playerOneStats(Function stats, Function text) => Row(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: stats(0, 0, 0),
          ),
        ],
      ),
      Container(
          width: 80,
          height: 25,
          child: FlatButton(
            onPressed: () => {},
            color: davysGrey,
            textColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: text("Clear", 18.0, 0.0),
          )),
    ]);
