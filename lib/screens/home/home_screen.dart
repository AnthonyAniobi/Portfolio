import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widgets/about_widget.dart';
import 'package:portfolio/screens/home/widgets/skill_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            LayoutBuilder(builder: (context, constraints) {
              if (Device.width < 500) {
                // mobile header
                return Column(
                  children: const [AboutWidget(), SkillWidget()],
                );
              } else if (Device.width >= 500 && Device.width < 750) {
                // tablet header
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [AboutWidget(), SkillWidget()],
                );
              } else {
                // tablet header
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [AboutWidget(), SkillWidget()],
                );
              }
            }),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
