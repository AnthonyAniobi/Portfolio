import 'package:flutter/material.dart';
import 'package:portfolio/util/app_router.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/models/nav_index_provider.dart';
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
          Image.asset(
            "assets/images/logo.png",
            color: Colors.white,
            height: 3.w,
            fit: BoxFit.contain,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              navLink("Home", context, AppRouter.home),
              navLink("Work Experience", context, AppRouter.workExperience),
              navLink("Personal Projects", context, AppRouter.personalProjects),
              navLink("Education", context, AppRouter.education),
            ],
          )
        ],
      ),
    );
  }

  Widget navLink(String text, BuildContext context, routeName) {
    return InkWell(
      onTap: () {
        setState(() {
          // update navbar text
          AppRouter.moveTo(routeName);
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
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (AppRouter.currentRoute == routeName)
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
