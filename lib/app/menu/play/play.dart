import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/database.dart';
import 'package:tictactoe/app/entities/widgets.dart';
import 'package:tictactoe/app/menu/play/sections/avatars.dart';
import 'package:tictactoe/app/menu/play/sections/board.dart';
import 'package:tictactoe/app/menu/play/sections/names.dart';
import 'package:tictactoe/app/menu/play/sections/scoreBoard.dart';
import 'package:tictactoe/main.dart';
import 'package:tictactoe/app_localizations.dart';

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

  Future _userFuture;
  bool oTurn = getChoice.choice;
  int pScore = 0;
  int spScore = 0;
  int draws = 0;
  int filledBoxes = 0;

  @override
  initState() {
    super.initState();
    _userFuture = DBProvider.db.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: playAB(context),
        backgroundColor: charlestonGreen,
        body: FutureBuilder(
            future: _userFuture,
            builder: (_, userData) {
              switch (userData.connectionState) {
                case ConnectionState.none:
                  return Container();
                case ConnectionState.waiting:
                  return Container();
                case ConnectionState.active:
                case ConnectionState.done:
              }
              return Container(
                child: Column(
                  children: <Widget>[
                    names(user1.name, user2.name),
                    avatars,
                    scoreBoard(user1.wins, user2.wins, user1.draws, context),
                    board(tapped, displayXO),
                  ],
                ),
              );
            }));
  }

  // MAIN FUNCTIONS
  //Tap on the board
  void tapped(int index) {
    setState(() {
      if (oTurn && (displayXO[index] == '')) {
        displayXO[index] = 'O';
        filledBoxes += 1;
      } else if (!oTurn && (displayXO[index] == '')) {
        displayXO[index] = 'X';
        filledBoxes += 1;
      }

      oTurn = !oTurn;

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
      oTurn = getChoice.choice;
    }

    // checks 2nd row
    if (displayXO[3] == displayXO[4] &&
        displayXO[3] == displayXO[5] &&
        displayXO[3] != '') {
      _showWinDialog(displayXO[3]);
      _clearBoard();
      oTurn = getChoice.choice;
    }

    // checks 3rd row
    if (displayXO[6] == displayXO[7] &&
        displayXO[6] == displayXO[8] &&
        displayXO[6] != '') {
      _showWinDialog(displayXO[6]);
      _clearBoard();
      oTurn = getChoice.choice;
    }

    // checks 1st column
    if (displayXO[0] == displayXO[3] &&
        displayXO[0] == displayXO[6] &&
        displayXO[0] != '') {
      _showWinDialog(displayXO[0]);
      _clearBoard();
      oTurn = getChoice.choice;
    }

    // checks 2nd column
    if (displayXO[1] == displayXO[4] &&
        displayXO[1] == displayXO[7] &&
        displayXO[1] != '') {
      _showWinDialog(displayXO[1]);
      _clearBoard();
      oTurn = getChoice.choice;
    }

    // checks 3rd column
    if (displayXO[2] == displayXO[5] &&
        displayXO[2] == displayXO[8] &&
        displayXO[2] != '') {
      _showWinDialog(displayXO[2]);
      _clearBoard();
      oTurn = getChoice.choice;
    }

    // checks diagonal
    if (displayXO[6] == displayXO[4] &&
        displayXO[6] == displayXO[2] &&
        displayXO[6] != '') {
      _showWinDialog(displayXO[6]);
      _clearBoard();
      oTurn = getChoice.choice;
    }

    // checks diagonal with Draw
    if (displayXO[0] == displayXO[4] &&
        displayXO[0] == displayXO[8] &&
        displayXO[0] != '') {
      _showWinDialog(displayXO[0]);
      _clearBoard();
      oTurn = getChoice.choice;
    } else if (filledBoxes == 9) {
      _clearBoard();
      _showDrawDialog();
      oTurn = getChoice.choice;
    }
  }

  // Show Draw Dialog
  void _showDrawDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return alertDialog(context,
              AppLocalizations.of(context).translate('drawDialog'), "");
        });
    draws += 1;
    user1.draws = draws.toString();
    user2.draws = draws.toString();
    DBProvider.db.update(user1);
    DBProvider.db.update(user2);
  }

  // Show Win Dialog
  void _showWinDialog(String winner) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return alertDialog(context,
              AppLocalizations.of(context).translate('winnerDialog'), winner);
        });

    if ((getChoice.choice == true && winner == "O") ||
        (getChoice.choice == false && winner == "X")) {
      pScore += 1;
      user1.wins = pScore.toString();
      user2.loses = pScore.toString();
      DBProvider.db.update(user1);
      DBProvider.db.update(user2);
    } else if ((getChoice.choice == true && winner == "X") ||
        (getChoice.choice == false && winner == "O")) {
      spScore += 1;
      user2.wins = spScore.toString();
      user1.loses = spScore.toString();
      DBProvider.db.update(user1);
      DBProvider.db.update(user2);
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
