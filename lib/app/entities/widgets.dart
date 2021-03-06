import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/route.dart';
import 'package:tictactoe/main.dart';
import 'package:tictactoe/app_localizations.dart';

//Splash Screen
Widget get splashIcon => Container(
      width: 230,
      height: 230,
      decoration: BoxDecoration(color: davysGrey, shape: BoxShape.circle),
      margin: EdgeInsets.only(right: 50, left: 50),
      child: Center(
          child: Text(
        'TicTacToe',
        style: TextStyle(
            fontSize: 42, color: Colors.white, fontWeight: FontWeight.bold),
      )),
    );

//Menu section
Widget get menuTitle => Container(
    margin: EdgeInsets.only(top: 140),
    child: Text(
      'TicTacToe',
      style: TextStyle(
          fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold),
    ));

Widget playBtn(BuildContext context) {
  return Container(
      width: 190,
      height: 42,
      margin: EdgeInsets.only(top: 50),
      child: FlatButton(
        onPressed: () => {Navigator.pushNamed(context, chooseRoute)},
        color: davysGrey,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(AppLocalizations.of(context).translate('playBtn'),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ));
}

Widget settingsBtn(BuildContext context) {
  return Container(
      width: 190,
      height: 42,
      margin: EdgeInsets.only(top: 40),
      child: FlatButton(
        onPressed: () => {Navigator.pushNamed(context, settingsRoute)},
        color: davysGrey,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(AppLocalizations.of(context).translate('settingsBtn'),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ));
}

Widget langBtn(BuildContext context) {
  return Container(
      width: 190,
      height: 42,
      margin: EdgeInsets.only(top: 40),
      child: FlatButton(
        onPressed: () => {Navigator.pushNamed(context, languageRoute)},
        color: davysGrey,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(AppLocalizations.of(context).translate('languagesBtn'),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ));
}

//Choose Section
Widget get titleChoose => Text('Pick',
    style: TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ));

Widget get chxBtn => Container(
    margin: EdgeInsets.only(left: 15),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)), color: cultured2),
    child: StreamBuilder(
      stream: getChoice.choice$,
      builder: (BuildContext context, AsyncSnapshot snap) {
        return FlatButton(
          color: cultured2,
          onPressed: () {
            Navigator.pushNamed(context, playRoute);
            getChoice.xChoice();
          },
          child: Text('X',
              style: TextStyle(
                  color: davysGrey, fontSize: 74, fontWeight: FontWeight.bold)),
        );
      },
    ));

Widget get choBtn => Container(
    margin: EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)), color: cultured2),
    child: StreamBuilder(
      stream: getChoice.choice$,
      builder: (BuildContext context, AsyncSnapshot snap) {
        return FlatButton(
          color: cultured2,
          onPressed: () {
            Navigator.pushNamed(context, playRoute);
            getChoice.oChoice();
          },
          child: Text('O',
              style: TextStyle(
                  color: davysGrey, fontSize: 74, fontWeight: FontWeight.bold)),
        );
      },
    ));

//Play section
Widget alertDialog(BuildContext context, String winnerText, String winner) {
  return AlertDialog(
    title: Text(
      winnerText + winner,
      style: TextStyle(color: Colors.white),
    ),
    actions: <Widget>[
      FlatButton(
        child: Text(
          AppLocalizations.of(context).translate('winnerDialogMenu'),
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.pushNamed(context, menuRoute);
        },
      ),
      FlatButton(
          child: Text(
            AppLocalizations.of(context).translate('winnerDialogAgain'),
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          }),
    ],
    backgroundColor: davysGrey,
  );
}

// AppBars
Widget playAB(BuildContext context) => PreferredSize(
    preferredSize: Size.fromHeight(60.0),
    child: AppBar(
      title: Text(AppLocalizations.of(context).translate('playTitle'),
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
    ));

Widget chooseAB(BuildContext context) => PreferredSize(
    preferredSize: Size.fromHeight(60.0),
    child: AppBar(
      title: Text(AppLocalizations.of(context).translate('chooseTitle'),
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          )),
      centerTitle: true,
      backgroundColor: davysGrey,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, size: 35),
        onPressed: () => {Navigator.pop(context)},
      ),
    ));

Widget settingsAB(BuildContext context) => PreferredSize(
    preferredSize: Size.fromHeight(60.0),
    child: AppBar(
      title: Text(AppLocalizations.of(context).translate('settingsTitle'),
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
    ));

Widget langAB(BuildContext context) => PreferredSize(
    preferredSize: Size.fromHeight(60.0),
    child: AppBar(
      title: Text(AppLocalizations.of(context).translate('languagesTitle'),
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
    ));

// Settings section
Widget settingsText(String s, double size, double margin) => Container(
      margin: EdgeInsets.only(left: margin),
      child: Text(s,
          style: TextStyle(
            color: Colors.white,
            fontSize: size,
            fontWeight: FontWeight.bold,
          )),
    );

Widget settingsTextField(Function setstate, String s) => Container(
    width: 155,
    height: 40,
    child: TextFormField(
      enabled: false,
      style: TextStyle(
        color: Colors.white70,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        hintText: s,
        hintStyle: TextStyle(
          color: Colors.white70,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30.0))),
        fillColor: davysGrey,
        filled: true,
        contentPadding: new EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      ),
      keyboardType: TextInputType.number,
      obscureText: false,
      onChanged: (dynamic str) {
        setstate(() {
          s = str;
        });
      },
    ));

Widget alertDialogSet(BuildContext context, String text) {
  return AlertDialog(
    title: Text(
      text,
      style: TextStyle(color: Colors.white),
    ),
    actions: <Widget>[
      FlatButton(
        child: Text(
          AppLocalizations.of(context).translate('settingsBtnBack'),
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.pushNamed(context, menuRoute);
        },
      ),
    ],
    backgroundColor: davysGrey,
  );
}

// Languages section

Widget languagesRow(
  String firstLang,
  String secondLang,
  String thirdLang,
  Function flFunc,
  Function slFunc,
  Function tlFunc,
) =>
    Row(
      children: [
        FlatButton(
          padding: EdgeInsets.only(left: 25, bottom: 15),
          onPressed: null,
          child: Image.asset(firstLang),
        ),
        FlatButton(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
          onPressed: null,
          child: Image.asset(secondLang),
        ),
        FlatButton(
          padding: EdgeInsets.only(right: 25, bottom: 15),
          onPressed: null,
          child: Image.asset(thirdLang),
        ),
      ],
    );

Widget languageText(String s, double size, double margin) => Container(
      margin: EdgeInsets.all(margin),
      child: Text(s,
          style: TextStyle(
            color: Colors.white70,
            fontSize: size,
            fontWeight: FontWeight.bold,
          )),
    );
