import 'package:flutter/material.dart';
import 'package:hala_avis_car/screens/about.dart';
import 'package:hala_avis_car/screens/homepage.dart';
import 'package:hala_avis_car/screens/loginui.dart';
import 'package:hala_avis_car/screens/settings.dart';

class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case aboutRoute:
        return MaterialPageRoute(builder: (_) => AboutPage());
      case settingsRoute:
        return MaterialPageRoute(builder: (_) => SettingsPage());
      default:
        return MaterialPageRoute(builder: (_) => LoginUi());
    }
  }
}

const String homeRoute = "home";
const String aboutRoute = "about";
const String settingsRoute = "settings";