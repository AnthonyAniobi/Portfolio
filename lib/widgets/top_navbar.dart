import 'package:flutter/material.dart';
import 'package:portfolio/screens/education/education_screen.dart';
import 'package:portfolio/screens/home/home_screen.dart';
import 'package:portfolio/screens/personal_projects/personal_projects_screen.dart';
import 'package:portfolio/screens/work_experience/work_experience_screen.dart';
import 'package:portfolio/util/app_router.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/fluro_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TopNavbar extends StatefulWidget {
  const TopNavbar({
    Key? key,
  }) : super(key: key);

  @override
  State<TopNavbar> createState() => _TopNavbarState();
}

class _TopNavbarState extends State<TopNavbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Flurorouter.moveTo(HomeScreen.routeName);
            },
            child: Image.asset(
              "assets/images/logo.png",
              color: Colors.white,
              height: 3.w,
              fit: BoxFit.contain,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              navLink("Home", context, HomeScreen.routeName),
              navLink(
                  "Work Experience", context, WorkExperienceScreen.routeName),
              navLink("Personal Projects", context,
                  PersonalProjectsScreen.routeName),
              navLink("Education", context, EducationScreen.routeName),
            ],
          )
        ],
      ),
    );
  }

  Widget navLink(String text, BuildContext context, String routeName) {
    return InkWell(
      onTap: () {
        setState(() {
          // update navbar text
          Flurorouter.moveTo(routeName);
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (Flurorouter.currentRoute == routeName)
              Container(
                color: Colors.orange,
                width: 5.w,
                height: .4.w,
              )
          ],
        ),
      ),
    );
  }
}

class HoverLink extends StatelessWidget {
  const HoverLink({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.white,
      ),
    );
  }
}
