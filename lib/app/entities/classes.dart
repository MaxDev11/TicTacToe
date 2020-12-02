import 'package:flutter/cupertino.dart';

class Choice with ChangeNotifier {
  bool _choice = true; // O

  void oChoice() {
    _choice = true; // O
    notifyListeners();
  }

  void xChoice() {
    _choice = false; // X
    notifyListeners();
  }

  bool get choice => _choice;
}

class AI {}
