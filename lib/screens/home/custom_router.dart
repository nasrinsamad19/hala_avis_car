import 'package:flutter/material.dart';
import 'package:hala_avis_car/screens/car_details/my_car.dart';
import 'package:hala_avis_car/screens/home/home_ui.dart';
import 'file:///C:/Users/ubais/AndroidStudioProjects/hala_avis_car/lib/screens/profile_update_ui/profile_update_ui.dart';

class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeUi());
      default:
        return MaterialPageRoute(builder: (_) => MyCar());
    }
  }
}

const String homeRoute = "home";
