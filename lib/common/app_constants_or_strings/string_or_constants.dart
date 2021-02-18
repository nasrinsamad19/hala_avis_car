import 'dart:ui';

import 'package:flutter/material.dart';

Map<int, Color> color =
{
  50:Color.fromRGBO(212,0,42, .1),
  100:Color.fromRGBO(212,0,42, .2),
  200:Color.fromRGBO(212,0,42, .3),
  300:Color.fromRGBO(212,0,42, .4),
  400:Color.fromRGBO(212,0,42, .5),
  500:Color.fromRGBO(212,0,42, .6),
  600:Color.fromRGBO(212,0,42, .7),
  700:Color.fromRGBO(212,0,42, .8),
  800:Color.fromRGBO(212,0,42, .9),
  900:Color.fromRGBO(212,0,42, 1)
};

class ColorNames {
  Color maroon = const Color(0xffD4002A);
  Color grey  =  Color(0xFF707070);
  Color black = Color(0xFF1C1C1C);
  MaterialColor materialMaroon =  MaterialColor(0xffD4002A, color);
}