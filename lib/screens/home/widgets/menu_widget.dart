import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widgets/menu_button.dart';
import 'package:portfolio/screens/mobile_projects/mobile_project_screen.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_strings.dart';
import 'package:portfolio/util/fluro_router.dart';
import 'package:portfolio/util/num_extension.dart';
import 'package:portfolio/widgets/big_shape_painter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          projects,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w100,
            color: Colors.white,
          ),
        ),
        CustomPaint(
          painter: ShapePainter(
            gradient: const LinearGradient(
              colors: [AppColors.gold, AppColors.silver],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0, 0.5],
            ),
            cornerRadius: 0.5.spMin.toDouble(),
            arrowWidth: 0.4.spMin.toDouble(),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuButton(
                text: 'Mobile Projects',
                onTap: () {
                  Flurorouter.moveTo(MobileProjectScreen.routeName);
                },
              ),
              MenuButton(
                text: 'Open Source Projects',
                onTap: () {},
              ),
              MenuButton(
                text: 'Articles',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
