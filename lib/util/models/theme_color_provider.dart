import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeColorProvider extends ChangeNotifier {
  Color color = Colors.blue;

  static ThemeColorProvider of(BuildContext context, {bool listen = true}) =>
      Provider.of<ThemeColorProvider>(context, listen: listen);

  void changeColor(Color color) {
    this.color = color;
    notifyListeners();
  }
}
