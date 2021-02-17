import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hala_avis_car/screens/flutter_database/database_helper.dart';

class SampleUi extends StatelessWidget {

  final dbHelper = DatabaseHelper.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sqflite'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Insert', style: TextStyle(fontSize: 20),),
              onPressed: () {
                _insert();
                },
            ),
            RaisedButton(
              child: Text('Query', style: TextStyle(fontSize: 20),),
              onPressed: () {
                _query();
                },
            ),
            RaisedButton(
              child: Text('Update', style: TextStyle(fontSize: 20),),
              onPressed: () {
                _update();
                },
            ),
            RaisedButton(
              child: Text('Delete', style: TextStyle(fontSize: 20),),
              onPressed: () {
                _delete();
                },
            ),
          ],
        ),
      ),
    );
  }

  void _insert() async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnName : 'Bob',
      DatabaseHelper.columnAge  : 23
    };
    final id = await dbHelper.insert(row);
    print('inserted row id: $id');
  }

  void _query() async {
    final allRows = await dbHelper.queryAllRows();
    print('query all rows:');
    allRows.forEach((row) => print(row));
  }

  void _update() async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnId   : 1,
      DatabaseHelper.columnName : 'Mary',
      DatabaseHelper.columnAge  : 32
    };
    final rowsAffected = await dbHelper.update(row);
    print('updated $rowsAffected row(s)');
  }

  void _delete() async {
    final id = await dbHelper.queryRowCount();
    final rowsDeleted = await dbHelper.delete(id);
    print('deleted $rowsDeleted row(s): row $id');
  }
}