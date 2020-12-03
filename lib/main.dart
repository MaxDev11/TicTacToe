import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/route.dart';
import 'package:tictactoe/app/entities/classes.dart';

GetIt getIt = GetIt.asNewInstance();

final getChoice = getIt.get<Choice>();

void main() {
  getIt.registerSingleton<Choice>(Choice());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicTacToe',
      theme: ThemeData(
        fontFamily: 'Righteous',
        backgroundColor: charlestonGreen,
        primaryColor: charlestonGreen,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: splashRoute,
    );
  }
}
