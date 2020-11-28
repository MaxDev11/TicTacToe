import 'package:flutter/material.dart';
import 'package:tictactoe/menu/Play/choose.dart';
import '../colors.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: charlestonGreen,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 140),
                child: Text(
                  'TicTacToe',
                  style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                width: 190,
                height: 42,
                margin: EdgeInsets.only(top: 55),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Choose()),
                    );
                  },
                  color: davysGrey,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('Play',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                )),
            Container(
                width: 190,
                height: 42,
                margin: EdgeInsets.only(top: 40),
                child: FlatButton(
                  onPressed: () => {},
                  color: davysGrey,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('Multiplayer',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                )),
            Container(
                width: 190,
                height: 42,
                margin: EdgeInsets.only(top: 40),
                child: FlatButton(
                  onPressed: () => {},
                  color: davysGrey,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('Settings',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                )),
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
