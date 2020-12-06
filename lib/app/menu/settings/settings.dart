import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/widgets.dart';
import 'package:tictactoe/app/menu/settings/sections/player1.dart';
import 'package:tictactoe/app/menu/settings/sections/player2.dart';
import 'package:tictactoe/app/menu/settings/sections/stats.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _namePl1;
  String _namePl2;
  String _rankPl1;
  String _rankPl2;

  Widget _buildNamePl1Field() {
    return settingsTextField(setState, _namePl1, "Player 1");
  }

  Widget _buildNamePl2Field() {
    return settingsTextField(setState, _namePl2, "Player 2");
  }

  Widget _buildRankPl1Field() {
    return settingsTextField(setState, _rankPl1, "0000");
  }

  Widget _buildRankPl2Field() {
    return settingsTextField(setState, _rankPl2, "0000");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: settingsAB(context),
      backgroundColor: charlestonGreen,
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 20),
        child: Column(
          children: <Widget>[
            playerOneInfo(settingsText, _buildNamePl1Field, _buildRankPl1Field),
            playerOneStats(statsBoard, settingsText),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: playerTwoInfo(
                  settingsText, _buildNamePl2Field, _buildRankPl2Field),
            ),
            playerTwoStats(statsBoard, settingsText),
          ],
        ),
      ),
    );
  }
}
