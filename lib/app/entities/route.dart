import 'package:flutter/material.dart';
import 'package:tictactoe/app/start.dart';
import 'package:tictactoe/app/menu/menu.dart';
import 'package:tictactoe/app/menu/play/play.dart';
import 'package:tictactoe/app/menu/play/sections/choose.dart';
import 'package:tictactoe/app/menu/settings/settings.dart';

const String splashRoute = '/',
    menuRoute = '/menu',
    chooseRoute = '/choose',
    playRoute = '/play',
    settingsRoute = '/settings';

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
    case settingsRoute:
      return MaterialPageRoute(builder: (context) => SettingsPage());
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(child: Text('No route defined for ${route.name}')),
              ));
  }
}
