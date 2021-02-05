import 'package:flutter/material.dart';
import 'package:hala_avis_car/screens/accident_report_ui.dart';
import 'package:hala_avis_car/screens/loginui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: loginui()
    );
        }
}