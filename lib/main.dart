import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hala_avis_car/screens/drawer/drawer_ui.dart';
import 'package:hala_avis_car/screens/flutter_database/sample/student_view.dart';
import 'package:hala_avis_car/screens/flutter_database/sampleui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawerUi(),
    );
  }
}