import 'package:hala_avis_car/screens/flutter_database/sample/student_table.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io'as io;

class DBHelperStudent{
  static Database _db;
  static const String Id='id';
  static const String Fname='fname';
  static const String Lname='lname';
  static const String Address='address';
  static const String Table='EmployeeTable';
  static const String DBName='Employee.db';

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DBName);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE $Table ($Id INTEGER PRIMARY KEY, $Fname TEXT,$Lname TEXT,$Address TEXT)");
  }

  Future<Student> save(Student student) async {
    var dbClient = await db;
    student.id = await dbClient.insert(Table, student.toMap());
    return student;
  }

  Future<List<Student>> getStudents() async {
    var dbClient = await db;
    List<Map> maps = await dbClient.query(Table, columns: [Id, Fname,Lname,Address]);
    List<Student> students = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        students.add(Student.fromMap(maps[i]));
      }
    }
    return students;
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient.delete(Table, where: '$Id = ?', whereArgs: [id]);
  }

  Future<int> update(Student student) async {
    var dbClient = await db;
    return await dbClient.update(Table, student.toMap(),
        where: '$Id = ?', whereArgs: [student.id]);
  }

  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }
}