import 'package:flutter/material.dart';
import 'package:tictactoe/colors.dart';

Widget get cross => Center(
        child: FlatButton(
      onPressed: () {},
      child: Text("X",
          style: TextStyle(
              color: davysGrey, fontSize: 78, fontWeight: FontWeight.bold)),
    ));
