import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/mobile_projects/data/mobile_project.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_strings.dart';
import 'package:portfolio/widgets/back_button.dart';
import 'package:portfolio/widgets/earth_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProjectViewWidget extends StatelessWidget {
  const ProjectViewWidget({
    super.key,
    this.project,
  });

  final MobileProject? project;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 50.w,
            height: 50.w,
            child: EarthWidget(),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: DefaultTextStyle(
              style: TextStyle(
                fontSize: 15.sp,
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  FlickerAnimatedText("View A Project"),
                ],
              )),
          // child: Text(
          //   "View A Project",
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 25.sp,
          //     color: AppColors.white,
          //     fontWeight: FontWeight.w500,
          //   ),
          // ),
        ),
        Align(
          alignment: Alignment.center,
          child: DefaultTextStyle(
            style: TextStyle(
              fontSize: 25.sp,
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
            // child: Container(),
            child: AnimatedTextKit(
              repeatForever: false,
              totalRepeatCount: 1,
              animatedTexts: [
                TypewriterAnimatedText(
                  myProjectArroundWorld,
                  textAlign: TextAlign.center,
                  speed: const Duration(milliseconds: 100),
                ),
              ],
            ),
          ),
          // child: Text(
          //   "My Projects From Arround the World",
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 25.sp,
          //     color: AppColors.white,
          //     fontWeight: FontWeight.w500,
          //   ),
          // ),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: AppBackButton(),
        ),
      ],
    ));
  }
}
