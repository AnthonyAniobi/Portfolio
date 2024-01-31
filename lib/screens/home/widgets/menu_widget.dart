import 'package:flutter/material.dart';
import 'package:portfolio/screens/blog/blog_screen.dart';
import 'package:portfolio/screens/contact/contact_screen.dart';
import 'package:portfolio/screens/home/widgets/menu_button.dart';
import 'package:portfolio/screens/mobile_projects/mobile_project_screen.dart';
import 'package:portfolio/screens/open_source_projects/open_source_project_screen.dart';
import 'package:portfolio/screens/videos/video_screen.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_strings.dart';
import 'package:portfolio/util/fluro_router.dart';
import 'package:portfolio/util/num_extension.dart';
import 'package:portfolio/widgets/app_text.dart';
import 'package:portfolio/widgets/big_shape_painter.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.sp20(projects).w100.white,
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
                text: mobileProjects,
                onTap: () {
                  Flurorouter.moveTo(MobileProjectScreen.routeName);
                },
              ),
              MenuButton(
                text: openSourceProjects,
                onTap: () {
                  Flurorouter.moveTo(OpenSourceProjectScreen.routeName);
                },
              ),
              MenuButton(
                text: blog,
                onTap: () {
                  Flurorouter.moveTo(BlogScreen.routeName);
                },
              ),
              MenuButton(
                text: videos,
                onTap: () {
                  Flurorouter.moveTo(VideoScreen.routeName);
                },
              ),
              MenuButton(
                text: contact,
                onTap: () {
                  Flurorouter.moveTo(ContactScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
