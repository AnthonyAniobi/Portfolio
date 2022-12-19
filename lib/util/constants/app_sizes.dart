import 'package:flutter/material.dart';

class AppSizes {
  static const double maxMobile = 500;
  static const double maxTablet = 1100;

  static double bigButtonWidth(BuildContext context) =>
      _responsiveSize(context, 90, 110, 180);

  static double bigButtonHeight(BuildContext context) =>
      _responsiveSize(context, 40, 60, 70);

  static double buttonRadius(BuildContext context) =>
      _responsiveSize(context, 4, 5, 10);

  static double _responsiveSize(
      BuildContext context, double mobile, double tablet, double desktop) {
    double size = MediaQuery.of(context).size.width;
    if (size < maxMobile) {
      return mobile;
    } else if (size < maxTablet) {
      return tablet;
    } else {
      return desktop;
    }
  }
}
