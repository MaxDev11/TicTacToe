import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/widgets.dart';

Widget get board => Column(children: [
      Container(
          margin: EdgeInsets.only(top: 30, left: 42, right: 42),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              boardSquare,
              boardSquare,
              boardSquare,
            ],
          )),
      Container(
          margin: EdgeInsets.only(top: 2, left: 42, right: 42),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              boardSquare,
              boardSquare,
              boardSquare,
            ],
          )),
      Container(
          margin: EdgeInsets.only(top: 2, left: 42, right: 42),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              boardSquare,
              boardSquare,
              boardSquare,
            ],
          ))
    ]);
