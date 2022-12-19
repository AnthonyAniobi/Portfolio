import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_sizes.dart';

class AppTextStyle {
  static TextStyle primary(BuildContext context,
      {Color? color, String? family}) {
    return _textStyles(
        context,
        20,
        30,
        50,
        TextStyle(
            fontWeight: FontWeight.bold, color: color, fontFamily: family));
  }

  static TextStyle title(BuildContext context, {Color? color, String? family}) {
    return _textStyles(
        context,
        30,
        50,
        90,
        TextStyle(
            fontWeight: FontWeight.bold, color: color, fontFamily: family));
  }

  static TextStyle medium(BuildContext context,
      {Color? color, String? family}) {
    return _textStyles(
        context,
        12,
        16,
        30,
        TextStyle(
            fontWeight: FontWeight.normal, color: color, fontFamily: family));
  }

  static TextStyle bodyTitle(BuildContext context,
      {Color? color, String? family}) {
    return _textStyles(
        context,
        16,
        20,
        32,
        TextStyle(
            fontWeight: FontWeight.bold, color: color, fontFamily: family));
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
