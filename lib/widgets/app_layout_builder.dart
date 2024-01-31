import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppLayoutBuilder extends StatelessWidget {
  const AppLayoutBuilder(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (Device.width < 500) {
        return mobile;
      } else if (Device.width >= 500 && Device.width < 1050) {
        return tablet;
      } else {
        return desktop;
      }
    });
  }
}
