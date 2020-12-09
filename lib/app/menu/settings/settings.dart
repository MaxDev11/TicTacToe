import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/database.dart';
import 'package:tictactoe/app/entities/widgets.dart';
import 'package:tictactoe/app/menu/settings/sections/player1.dart';
import 'package:tictactoe/app/menu/settings/sections/player2.dart';
import 'package:tictactoe/app/menu/settings/sections/stats.dart';
import 'package:tictactoe/main.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  Future _userFuture;

  @override
  initState() {
    super.initState();
    _userFuture = getUsers();
  }

  getUsers() async {
    final _userData = await DBProvider.db.getUsers();
    return _userData;
  }

  Widget _buildNamePl1Field() {
    return settingsTextField(setState, user1.name);
  }

  Widget _buildNamePl2Field() {
    return settingsTextField(setState, user2.name);
  }

  Widget _buildRankPl1Field() {
    return settingsTextField(setState, user1.rank);
  }

  Widget _buildRankPl2Field() {
    return settingsTextField(setState, user2.rank);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: settingsAB(context),
        backgroundColor: charlestonGreen,
        body: FutureBuilder(
            future: _userFuture,
            builder: (_, userData) {
              return Container(
                margin:
                    EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 20),
                child: Column(
                  children: <Widget>[
                    playerOneInfo(
                        settingsText, _buildNamePl1Field, _buildRankPl1Field),
                    playerOneStats(statsBoard, settingsText, context),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: playerTwoInfo(
                          settingsText, _buildNamePl2Field, _buildRankPl2Field),
                    ),
                    playerTwoStats(statsBoard, settingsText, context),
                  ],
                ),
              );
            }));
  }
}
