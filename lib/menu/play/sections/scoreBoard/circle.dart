import 'package:flutter/material.dart';
import 'package:tictactoe/colors.dart';

Widget get circle => Center(
        child: FlatButton(
      onPressed: () {},
      child: Text("O",
          style: TextStyle(
              color: davysGrey, fontSize: 78, fontWeight: FontWeight.bold)),
    ));
