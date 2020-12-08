import 'package:flutter/material.dart';

Widget names(String name, String name2) => Container(
      margin: EdgeInsets.only(top: 30, left: 57, right: 53),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              )),
          Text('$name2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              )),
        ],
      ),
    );
