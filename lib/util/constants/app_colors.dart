import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF1c1c24);
  static const Color gold = Color(0xFFffd700);
  static const Color silver = Color(0xFFc0c0c0);

  static const LinearGradient goldSilverVertical = LinearGradient(
      colors: [gold, silver],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
  static const LinearGradient goldSilverHorizontal = LinearGradient(
      colors: [gold, silver],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);

  static const List<Color> primaryColors = [
    Colors.indigo,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red,
  ];

  static const List<Color> secondaryColors = [
    Color.fromARGB(255, 181, 192, 250),
    Color.fromARGB(255, 199, 227, 250),
    Color.fromARGB(255, 206, 250, 208),
    Color.fromARGB(255, 247, 242, 204),
    Color.fromARGB(255, 252, 231, 200),
    Color.fromARGB(255, 249, 205, 201),
  ];
}
