import 'app_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/route.dart';
import 'package:tictactoe/app/entities/classes.dart';
import 'package:tictactoe/app/start.dart';

import 'app/entities/database.dart';

GetIt getIt = GetIt.asNewInstance();
final getChoice = getIt.get<Choice>();
User user1 = User(
  name: 'player1',
  rank: '0000',
  wins: '0',
  draws: '0',
  loses: '0',
);

User user2 = User(
  name: 'player2',
  rank: '0000',
  wins: '0',
  draws: '0',
  loses: '0',
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  getIt.registerSingleton<Choice>(Choice());

  DBProvider.db.insert(user1);
  DBProvider.db.insert(user2);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ru', 'RU'),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
      ],
      title: 'TicTacToe',
      theme: ThemeData(
        fontFamily: 'Righteous',
        backgroundColor: charlestonGreen,
        primaryColor: charlestonGreen,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      home: SplashScreen(),
    );
  }
}
