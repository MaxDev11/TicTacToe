import 'package:flutter/material.dart';
import 'package:tictactoe/app/start.dart';
import 'package:tictactoe/app/menu/menu.dart';
import 'package:tictactoe/app/menu/play/play.dart';
import 'package:tictactoe/app/menu/sections/choose.dart';
import 'package:tictactoe/app/menu/multiplayer/multiplayer.dart';

const String splashRoute = '/',
    menuRoute = '/menu',
    chooseRoute = '/choose',
    playRoute = '/play',
    multiplayerRoute = '/multiplayer';

Route generateRoute(RouteSettings route) {
  switch (route.name) {
    case splashRoute:
      return MaterialPageRoute(builder: (context) => SplashScreen());
    case menuRoute:
      return MaterialPageRoute(builder: (context) => MenuPage());
    case chooseRoute:
      return MaterialPageRoute(builder: (context) => Choose());
    case playRoute:
      return MaterialPageRoute(builder: (context) => PlayPage());
    case multiplayerRoute:
      return MaterialPageRoute(builder: (context) => MultiplayerPage());
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(child: Text('No route defined for ${route.name}')),
              ));
  }
}
