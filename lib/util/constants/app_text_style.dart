import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_sizes.dart';

class AppTextStyle {
  static TextStyle primary(BuildContext context,
      {Color? color, String? family, TextDecoration? decoration}) {
    return _textStyles(
        context,
        20,
        30,
        50,
        TextStyle(
            fontWeight: FontWeight.bold,
            color: color,
            fontFamily: family,
            decoration: decoration));
  }

  static TextStyle title(BuildContext context,
      {Color? color, String? family, TextDecoration? decoration}) {
    return _textStyles(
        context,
        30,
        50,
        90,
        TextStyle(
            fontWeight: FontWeight.bold,
            color: color,
            fontFamily: family,
            decoration: decoration));
  }

  static TextStyle medium(BuildContext context,
      {Color? color,
      String? family,
      TextDecoration? decoration,
      FontWeight? fontWeight}) {
    return _textStyles(
        context,
        12,
        16,
        18,
        TextStyle(
            fontWeight: fontWeight ?? FontWeight.normal,
            color: color,
            fontFamily: family,
            decoration: decoration));
  }

  static TextStyle bodyTitle(BuildContext context,
      {Color? color, String? family, TextDecoration? decoration}) {
    return _textStyles(
        context,
        16,
        20,
        32,
        TextStyle(
            fontWeight: FontWeight.bold,
            color: color,
            fontFamily: family,
            decoration: decoration));
  }

  static TextStyle _textStyles(BuildContext context, double mobile,
      double tablet, double desktop, TextStyle style) {
    double size = MediaQuery.of(context).size.width;

    if (size < AppSizes.maxMobile) {
      return style.copyWith(fontSize: mobile);
    } else if (size < AppSizes.maxTablet) {
      return style.copyWith(fontSize: tablet);
    } else {
      return style.copyWith(fontSize: desktop);
    }
  }
}
