import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/widgets.dart';

class Choose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: charlestonGreen,
      appBar: chooseAB(context),
      body: Center(
          child: Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 150,
              decoration: BoxDecoration(
                  color: davysGrey,
                  border: Border.all(color: Colors.white70, width: 5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  chxBtn,
                  titleChoose,
                  choBtn,
                ],
              ))),
    );
  }
}
