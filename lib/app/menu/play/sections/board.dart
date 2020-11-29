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

// Widget get board => Container(
//     margin: EdgeInsets.only(top: 30, left: 42, right: 42),
//     child: GridView.builder(
//       physics: NeverScrollableScrollPhysics(),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3,
//         childAspectRatio: 1.0,
//         crossAxisSpacing: 2.0,
//         mainAxisSpacing: 2.0,
//       ),
//       itemCount: 9,
//       itemBuilder: ,
//     ));
