import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/widgets.dart';

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  Future _userFuture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: langAB(context),
        backgroundColor: charlestonGreen,
        body: FutureBuilder(
            future: _userFuture,
            builder: (_, userData) {
              return Container(
                margin: EdgeInsets.only(top: 30, bottom: 20),
                child: Column(
                  children: <Widget>[
                    languagesRow(
                        'assets/img/RuLang.png',
                        'assets/img/EnLang.png',
                        'assets/img/EmptyLang.png',
                        () => {},
                        () => {},
                        null),
                    languagesRow(
                        'assets/img/EmptyLang.png',
                        'assets/img/EmptyLang.png',
                        'assets/img/EmptyLang.png',
                        null,
                        null,
                        null),
                    languagesRow(
                        'assets/img/EmptyLang.png',
                        'assets/img/EmptyLang.png',
                        'assets/img/EmptyLang.png',
                        null,
                        null,
                        null),
                    languagesRow(
                        'assets/img/EmptyLang.png',
                        'assets/img/EmptyLang.png',
                        'assets/img/EmptyLang.png',
                        null,
                        null,
                        null),
                    Center(
                        child: languageText(
                            'Language changes automatically!', 15.0, 10.0)),
                  ],
                ),
              );
            }));
  }
}
