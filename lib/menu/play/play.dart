import 'package:flutter/material.dart';
import 'package:tictactoe/menu/menu.dart';

import '../../colors.dart';
import 'ai/ai.dart';
import 'sections/board.dart';
import 'sections/avatars.dart';
import 'sections/scoreBoard/scoreBoard.dart';

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
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                )
              },
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
