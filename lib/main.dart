import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:tictactoe/app/entities/colors.dart';
import 'package:tictactoe/app/entities/route.dart';
import 'package:tictactoe/app/entities/classes.dart';

GetIt getIt = GetIt.asNewInstance();
final getChoice = getIt.get<Choice>();

void main() async {
  getIt.registerSingleton<Choice>(Choice());

  final appDocDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.initFlutter(appDocDirectory.path);
  var playerInfoBox = await Hive.openBox('playerInfoBox');

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
