import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/widgets.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: charlestonGreen,
      body: Center(
        child: Column(
          children: <Widget>[
            menuTitle,
            playBtn(context),
            settingsBtn(context),
            themesBtn(context),
            // Container(
            //     margin: EdgeInsets.only(top: 50),
            //     child: DropdownButton(
            //       icon: Image.asset('img/ColorPalette.png'),
            //       value: () => {},
            //       items: [],
            //       onChanged: changed,
            //     )
            // ),
          ],
        ),
      ),
    );
  }
}
