import 'package:flutter_section_23/task_management_lanjutan/models/task_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  static late Database _database;

  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  Future<Database> get database async {
    _database = await _initializeDB();
    return _database;
  }

  final String _tableName = 'tasks';

  Future<Database> _initializeDB() async {
    var db = openDatabase(join(await getDatabasesPath(), 'task_db.db'),
        onCreate: (db, version) async {
      await db.execute(
        '''CREATE TABLE $_tableName(
            id INTEGER PRIMARY KEY,
            taskName TEXT)''',
      );
    }, version: 1);
    return db;
  }

  /// Method untuk menambahkan data ke tabel
  Future<void> insertTask(TaskModel taskModel) async {
    final Database db = await database;
    await db.insert(
      _tableName,
      taskModel.toMap(),
    );
  }

  /// Method untuk membaca data dari tabel
  Future<List<TaskModel>> getTasks() async {
    final Database db = await database;
    List<Map<String, dynamic>> results = await db.query(_tableName);
    return results.map((e) => TaskModel.fromMap(e)).toList();
  }

  /// Method untuk mengambil data dengan id
  Future<TaskModel> getTaskById(int id) async {
    final Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
    return results.map((e) => TaskModel.fromMap(e)).first;
  }

  /// Method untuk memperbarui data
  Future<void> updateTask(TaskModel taskModel) async {
    final db = await database;
    await db.update(
      _tableName,
      taskModel.toMap(),
      where: 'id = ?',
      whereArgs: [taskModel.id],
    );
  }

  /// Method untuk menghapus data
  Future<void> deleteTask(int id) async {
    final db = await database;
    await db.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
