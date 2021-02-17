import 'package:flutter/material.dart';
import 'package:hala_avis_car/screens/home/home_ui.dart';
import 'package:hala_avis_car/screens/loginui.dart';

class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeUi());
      default:
        return MaterialPageRoute(builder: (_) => LoginUi());
    }
  }
}

const String homeRoute = "home";
