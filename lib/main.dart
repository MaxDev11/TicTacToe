import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/route.dart';
import 'package:tictactoe/app/entities/classes.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => Choice()),
    ], child: MyApp()));

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
