import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:provider/provider.dart';

class MyWorksProvider extends ChangeNotifier {
  int selectedIndex = 0;

  static MyWorksProvider of(BuildContext context, {bool listen = true}) =>
      Provider.of<MyWorksProvider>(context, listen: listen);

  void updateIndex(int index) {
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
