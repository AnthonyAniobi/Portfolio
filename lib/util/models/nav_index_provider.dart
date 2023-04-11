import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:provider/provider.dart';

class NavIndexProvider extends ChangeNotifier {
  int index = 1;

  static NavIndexProvider of(BuildContext context, {bool listen = true}) =>
      Provider.of<NavIndexProvider>(context, listen: listen);

  void setIndex(int currentIndex) {
    currentIndex = index;
    notifyListeners();
  }
}
