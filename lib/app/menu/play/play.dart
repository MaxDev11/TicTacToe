import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/route.dart';
import 'package:tictactoe/app/entities/classes.dart';
import 'package:tictactoe/app/menu/play/sections/avatars.dart';
import 'package:tictactoe/app/menu/play/sections/scoreBoard.dart';

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

  bool turn() => Provider.of<Choice>(context, listen: false).choice;
  bool opTurn = true; // O
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
            board,
          ],
        ),
      ),
    );
  }

  Widget get board => Expanded(
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
                _tapped(index);
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

  void _tapped(int index) {
    setState(() {
      if (turn() && (displayXO[index] == '')) {
        displayXO[index] = 'O';
        filledBoxes += 1;
      } else if (!turn() && (displayXO[index] == '')) {
        displayXO[index] = 'X';
        filledBoxes += 1;
      }

      //turn() = !turn();

      _checkWinner();
    });
  }

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

    // checks diagonal
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

  void _showDrawDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'DRAW',
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, menuRoute);
                },
              ),
              FlatButton(
                child: Text(
                  'Again?',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
            backgroundColor: davysGrey,
          );
        });
    draws += 1;
  }

  void _showWinDialog(String winner) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'WINNER IS: ' + winner,
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, menuRoute);
                },
              ),
              FlatButton(
                  child: Text(
                    'Again?',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
            backgroundColor: davysGrey,
          );
        });

    if (winner == 'O') {
      pScore += 1;
    } else if (winner == 'X') {
      bScore += 1;
    }
  }

  void _clearBoard() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        displayXO[i] = '';
      }
    });

    filledBoxes = 0;
  }
}
