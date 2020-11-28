import 'package:flutter/material.dart';

Widget get avatars => Container(
      margin: EdgeInsets.only(top: 40, left: 55, right: 55),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/img/Player.png'),
          Image.asset('assets/img/Draw.png'),
          Image.asset('assets/img/Bot.png'),
        ],
      ),
    );
