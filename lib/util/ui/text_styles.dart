import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_sizes.dart';

class AppTextStyle {
  static TextStyle primary(BuildContext context, {Color? color}) {
    double fontSize;
    FontWeight fontWeight = FontWeight.bold;

    double size = MediaQuery.of(context).size.width;
    if (size < AppSizes.maxMobile) {
      fontSize = 20;
    } else if (size < AppSizes.maxTablet) {
      fontSize = 30;
    } else {
      fontSize = 40;
    }

    return TextStyle(
      color: color ?? Colors.black,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
