import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/classes.dart';
import 'package:tictactoe/app/entities/route.dart';

//Splash Screen
Widget get splashIcon => Container(
      width: 230,
      height: 230,
      decoration: BoxDecoration(color: davysGrey, shape: BoxShape.circle),
      margin: EdgeInsets.only(right: 50, left: 50),
      child: Center(
          child: Text(
        'TicTacToe',
        style: TextStyle(
            fontSize: 42, color: Colors.white, fontWeight: FontWeight.bold),
      )),
    );

//Menu section
Widget get menuTitle => Container(
    margin: EdgeInsets.only(top: 140),
    child: Text(
      'TicTacToe',
      style: TextStyle(
          fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold),
    ));

Widget playBtn(BuildContext context) {
  return Container(
      width: 190,
      height: 42,
      margin: EdgeInsets.only(top: 55),
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, chooseRoute);
        },
        color: davysGrey,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text('Play',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ));
}

Widget multiplayerBtn(BuildContext context) {
  return Container(
      width: 190,
      height: 42,
      margin: EdgeInsets.only(top: 40),
      child: FlatButton(
        onPressed: () => {},
        color: davysGrey,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text('Multiplayer',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ));
}

Widget settingsBtn(BuildContext context) {
  return Container(
      width: 190,
      height: 42,
      margin: EdgeInsets.only(top: 40),
      child: FlatButton(
        onPressed: () => {},
        color: davysGrey,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text('Settings',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ));
}

//Choose Section
Widget get titleChoose => Text('Pick',
    style: TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ));

Widget get chxBtn => Container(
    margin: EdgeInsets.only(left: 15),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)), color: cultured2),
    child: Consumer<Choice>(
      builder: (context, choice, child) {
        return FlatButton(
          color: cultured2,
          onPressed: () {
            Navigator.pushNamed(context, playRoute);
            choice.xChoice();
          },
          child: Text('X',
              style: TextStyle(
                  color: davysGrey, fontSize: 74, fontWeight: FontWeight.bold)),
        );
      },
    ));

Widget get choBtn => Container(
    margin: EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)), color: cultured2),
    child: Consumer<Choice>(
      builder: (context, choice, child) {
        return FlatButton(
          color: cultured2,
          onPressed: () {
            Navigator.pushNamed(context, playRoute);
            choice.oChoice();
          },
          child: Text('O',
              style: TextStyle(
                  color: davysGrey, fontSize: 74, fontWeight: FontWeight.bold)),
        );
      },
    ));

//Play section
// Widget get boardSquare => Container(
//     width: 90,
//     height: 100,
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(5)), color: cultured2),
//     child: Center(
//         child: GestureDetector(
//       onTap: () {
//         _tapped(index);
//       },
//       child: Text("X",
//           style: TextStyle(
//               color: davysGrey, fontSize: 78, fontWeight: FontWeight.bold)),
//     )));
