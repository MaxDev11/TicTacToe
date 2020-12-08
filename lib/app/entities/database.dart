import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';
import 'classes.dart';

class DBProvider {
  static final _dbName = "users.sqlite";
  static final _dbVersion = 1;
  static final _tableName = 'users';

  static final columnId = "_id";
  static final columnName = "name";
  static final columnRank = "rank";
  static final columnWins = "wins";
  static final columnDraws = "draws";
  static final columnLoses = "loses";

  DBProvider._();
  static final DBProvider db = DBProvider._();
  static Database _database;

  Future<Database> get database async {
    print("DB getter called!");

    if (_database != null) return _database;

    _database = await initDB();
    return _database;
  }

  Future<Database> initDB() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, _dbName);
    return await openDatabase(
      path,
      version: _dbVersion,
      onCreate: (Database database, int version) async {
        print("Creating user table");
        await database.execute('''
     CREATE TABLE $_tableName(
     $columnId INTEGER PRIMARY KEY,
     $columnName TEXT, 
     $columnRank INTEGER, 
     $columnWins INTEGER, 
     $columnDraws INTEGER, 
     $columnLoses INTEGER )
      ''');
      },
    );
  }

  Future<List<User>> getUsers() async {
    final db = await database;

    var users = await db.query(_tableName, columns: [
      columnId,
      columnName,
      columnRank,
      columnWins,
      columnDraws,
      columnLoses
    ]);

    List<User> userList = List<User>();

    users.forEach((currentUser) {
      User user = User.fromMap(currentUser);

      userList.add(user);
    });

    return userList;
  }

  Future<User> insert(User user) async {
    print("Data inserted in the Database!");
    final db = await database;
    user.id = await db.insert(_tableName, user.toMap());

    return user;
  }

  Future<int> update(User user) async {
    print("Data updated in the Database!");
    final db = await database;

    return await db.update(
      _tableName,
      user.toMap(),
      where: "_id = ?",
      whereArgs: [user.id],
    );
  }
}
