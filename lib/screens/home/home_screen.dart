import 'package:flutter/material.dart';
import 'package:portfolio/widgets/screen_background.dart';
import 'package:portfolio/widgets/top_navbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        children: [
          LayoutBuilder(builder: (context, constraints) {
            if (Device.screenType == ScreenType.mobile) {
              // mobile header
              return Column();
            } else {
              // tablet header
              return Row();
            }
          }),
        ],
      ),
    );
  }
}
