import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/route.dart';
import 'package:tictactoe/app/entities/widgets.dart';
import 'package:tictactoe/app/menu/sections/avatars.dart';
import 'package:tictactoe/app/menu/sections/board.dart';
import 'package:tictactoe/app/menu/sections/scoreBoard.dart';
import 'package:tictactoe/main.dart';

class PlayPage extends StatefulWidget {
  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  List<String> displayXO = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  bool playerTurn = getChoice.choice;
  bool aiTurn = !getChoice.choice;
  int pScore = 0;
  int bScore = 0;
  int draws = 0;
  int filledBoxes = 0;

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
            scoreBoard(pScore, bScore, draws),
            board(move, displayXO),
          ],
        ),
      ),
    );
  }

  // MAIN FUNCTIONS
  //Tap on the board
  void move(int index) {
    var random = Random();

    setState(() {
      if (playerTurn &&
          (displayXO[index] == '') &&
          (displayXO[index + random.nextInt(2)] == '')) {
        displayXO[index] = 'O';
        filledBoxes += 1;
        displayXO[index + random.nextInt(2)] = 'X';
        filledBoxes += 1;
      } else if (!playerTurn &&
          (displayXO[index] == '') &&
          (displayXO[index + random.nextInt(2)] == '')) {
        displayXO[index] = 'X';
        filledBoxes += 1;
        displayXO[index + random.nextInt(2)] = 'O';
        filledBoxes += 1;
      }

      _checkWinner();
    });
  }

  // Check the winner
  void _checkWinner() {
    // checks 1st row
    if (displayXO[0] == displayXO[1] &&
        displayXO[0] == displayXO[2] &&
        displayXO[0] != '') {
      _showWinDialog(displayXO[0]);
      _clearBoard();
    }

    // checks 2nd row
    if (displayXO[3] == displayXO[4] &&
        displayXO[3] == displayXO[5] &&
        displayXO[3] != '') {
      _showWinDialog(displayXO[3]);
      _clearBoard();
    }

    // checks 3rd row
    if (displayXO[6] == displayXO[7] &&
        displayXO[6] == displayXO[8] &&
        displayXO[6] != '') {
      _showWinDialog(displayXO[6]);
      _clearBoard();
    }

    // checks 1st column
    if (displayXO[0] == displayXO[3] &&
        displayXO[0] == displayXO[6] &&
        displayXO[0] != '') {
      _showWinDialog(displayXO[0]);
      _clearBoard();
    }

    // checks 2nd column
    if (displayXO[1] == displayXO[4] &&
        displayXO[1] == displayXO[7] &&
        displayXO[1] != '') {
      _showWinDialog(displayXO[1]);
      _clearBoard();
    }

    // checks 3rd column
    if (displayXO[2] == displayXO[5] &&
        displayXO[2] == displayXO[8] &&
        displayXO[2] != '') {
      _showWinDialog(displayXO[2]);
      _clearBoard();
    }

    // checks diagonal
    if (displayXO[6] == displayXO[4] &&
        displayXO[6] == displayXO[2] &&
        displayXO[6] != '') {
      _showWinDialog(displayXO[6]);
      _clearBoard();
    }

    // checks diagonal with Draw
    if (displayXO[0] == displayXO[4] &&
        displayXO[0] == displayXO[8] &&
        displayXO[0] != '') {
      _showWinDialog(displayXO[0]);
      _clearBoard();
    } else if (filledBoxes == 9) {
      _clearBoard();
      _showDrawDialog();
    }
  }

  // Show Draw Dialog
  void _showDrawDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return alertDialog(context, "DR", "AW");
        });
    draws += 1;
  }

  // Show Win Dialog
  void _showWinDialog(String winner) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return alertDialog(context, "WINNER IS: ", winner);
        });

    if (winner == 'O') {
      pScore += 1;
    } else if (winner == 'X') {
      bScore += 1;
    }
  }

  // Clear the board
  void _clearBoard() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        displayXO[i] = '';
      }
    });
    filledBoxes = 0;
  }
}
