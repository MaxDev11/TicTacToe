import 'package:flutter/material.dart';

Widget get names => Container(
      margin: EdgeInsets.only(top: 30, left: 57, right: 53),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Player1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              )),
          Text('Player2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              )),
        ],
      ),
    );
