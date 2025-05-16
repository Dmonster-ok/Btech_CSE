import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Db {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'main1213243546.db'),
      version: 1,
      onCreate: (db, version) async {
        await db.execute("""
          CREATE TABLE users (
            id INTEGER PRIMARY KEY AUTOINCREMENT, 
            name TEXT,
            age INTEGER
          );
        """);
      },
    );
  }

  Future<List<Map<String, dynamic>>> getAll() async {
    final db = await database;
    return await db.query("users");
  }

  Future<void> add(String name, int age) async {
    final db = await database;
    await db.insert("users", {'name': name, 'age': age});
  }

  Future<void> update(int id, String name, int age) async {
    final db = await database;
    await db.update("users", {'name': name, 'age': age},
        where: "id = ?", whereArgs: [id]);
  }

  Future<void> delete(int id) async {
    final db = await database;
    await db.delete("users", where: "id = ?", whereArgs: [id]);
  }
}
