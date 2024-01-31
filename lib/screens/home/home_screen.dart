import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widgets/about_widget.dart';
import 'package:portfolio/screens/home/widgets/menu_widget.dart';
import 'package:portfolio/util/num_extension.dart';
import 'package:portfolio/widgets/app_layout_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return AppLayoutBuilder(
      mobile: Column(
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: const AboutWidget(),
          ),
          const MenuWidget(),
          SizedBox(height: 10.h),
        ],
      ),
      tablet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.spMin.toDouble()),
        child: Row(
          children: [
            const Expanded(child: AboutWidget()),
            SizedBox(width: 10.w),
            const MenuWidget(),
          ],
        ),
      ),
      desktop: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 50.w, child: const AboutWidget()),
            const MenuWidget(),
          ],
        ),
      ),
    );
  }
}
