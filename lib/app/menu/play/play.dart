import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/route.dart';
import 'package:tictactoe/app/entities/widgets.dart';
import 'package:tictactoe/app/menu/play/ai/ai.dart';
import 'package:tictactoe/app/menu/play/sections/board.dart';
import 'package:tictactoe/app/menu/play/sections/scoreBoard/scoreBoard.dart';

class PlayPage extends StatefulWidget {
  final GameDifficulty difficulty;
  PlayPage({this.difficulty});

  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            title: Text('Play',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                )),
            centerTitle: true,
            backgroundColor: davysGrey,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, size: 35),
              onPressed: () => {Navigator.pushNamed(context, menuRoute)},
            ),
          )),
      backgroundColor: charlestonGreen,
      body: Container(
        child: Column(
          children: <Widget>[
            avatars,
            scoreBoard,
            board,
          ],
        ),
      ),
    );
  }
}
