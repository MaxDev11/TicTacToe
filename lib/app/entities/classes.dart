import 'package:rxdart/rxdart.dart';
import 'package:tictactoe/app/entities/database.dart';

class Choice {
  final BehaviorSubject<bool> _choice = BehaviorSubject.seeded(true);

  Stream<bool> get choice$ => _choice.stream;
  bool get choice => _choice.value;

  void oChoice() {
    _choice.add(true);
  }

  void xChoice() {
    _choice.add(false);
  }
}

class User {
  int id;
  String name;
  String rank;
  String wins;
  String draws;
  String loses;

  User({
    this.id,
    this.name,
    this.rank,
    this.wins,
    this.draws,
    this.loses,
  });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      DBProvider.columnName: name,
      DBProvider.columnRank: rank,
      DBProvider.columnWins: wins,
      DBProvider.columnDraws: draws,
      DBProvider.columnLoses: loses,
    };

    if (id != null) {
      map[DBProvider.columnId] = id;
    }

    return map;
  }

  User.fromMap(Map<String, dynamic> map) {
    id = map[DBProvider.columnId];
    name = map[DBProvider.columnName];
    rank = map[DBProvider.columnRank];
    wins = map[DBProvider.columnWins];
    draws = map[DBProvider.columnDraws];
    loses = map[DBProvider.columnLoses];
  }
}
