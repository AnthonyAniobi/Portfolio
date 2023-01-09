import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:provider/provider.dart';

class ThemeColorProvider extends ChangeNotifier {
  int selectedIndex = 1;

  static ThemeColorProvider of(BuildContext context, {bool listen = true}) =>
      Provider.of<ThemeColorProvider>(context, listen: listen);

  Color get color => AppColors.primaryColors[selectedIndex];

  void setColorIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  Color primaryColor() {
    return AppColors.primaryColors[selectedIndex];
  }

  Color secondaryColor() {
    return AppColors.secondaryColors[selectedIndex];
  }
}
