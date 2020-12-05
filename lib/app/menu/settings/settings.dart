import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/widgets.dart';
import 'package:flutter/services.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _namePl1;
  String _namePl2;
  String _rankPl1;
  String _rankPl2;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildNamePl1Field() {
    return Container(
        width: 155,
        child: TextFormField(
          inputFormatters: [
            LengthLimitingTextInputFormatter(4),
          ],
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          decoration: InputDecoration(
            hintText: "Player 1",
            hintStyle: TextStyle(
              color: Colors.white70,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(30.0))),
            fillColor: davysGrey,
            filled: true,
          ),
          keyboardType: TextInputType.name,
          obscureText: false,
          onChanged: (String str) {
            setState(() {
              _namePl1 = str;
            });
          },
        ));
  }

  Widget _buildNamePl2Field() {
    return null;
  }

  Widget _buildRankPl1Field() {
    return Container(
        width: 155,
        child: TextFormField(
          inputFormatters: [
            LengthLimitingTextInputFormatter(4),
          ],
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          decoration: InputDecoration(
            hintText: "0000",
            hintStyle: TextStyle(
              color: Colors.white70,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(30.0))),
            fillColor: davysGrey,
            filled: true,
          ),
          keyboardType: TextInputType.number,
          obscureText: false,
          onChanged: (String str) {
            setState(() {
              _rankPl1 = str;
            });
          },
        ));
  }

  Widget _buildRankPl2Field() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: settingsAB(context),
        backgroundColor: charlestonGreen,
        body: Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Image.asset('assets/img/Player1_settings.png'),
                  ),
                ]),
                Form(
                    child: Column(
                  children: [
                    Text("Name",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                    _buildNamePl1Field(),
                    Text("Rank",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                    _buildRankPl1Field(),
                  ],
                ))
              ],
            )));
  }
}
