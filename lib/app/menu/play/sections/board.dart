import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';

Widget board(Function tapped, List<String> displayXO) => Expanded(
    child: GridView.builder(
        padding: EdgeInsets.only(top: 30, left: 42, right: 42),
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              tapped(index);
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: cultured2),
                child: Center(
                  child: Text(displayXO[index],
                      style: TextStyle(
                          color: davysGrey,
                          fontSize: 72,
                          fontWeight: FontWeight.bold)),
                )),
          );
        }));
