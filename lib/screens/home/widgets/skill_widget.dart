import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SkillWidget extends StatelessWidget {
  SkillWidget({super.key});

  final List<String> skills = [
    "Flutter",
    "SwiftUI",
    "Jetpack Compose",
    "Firebase",
    "CI/CD",
    "Api Integrations",
  ];
  final List<String> moreSkills = [
    "SQLite",
    "MongoDb",
    "Hive",
  ];

  @override
  Widget build(BuildContext context) {
    double size;
    if (Device.width < 500) {
      size = 60.w;
    } else if (Device.width >= 500 && Device.width < 750) {
      size = 45.w;
    } else {
      size = 50.h;
    }

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          Transform.rotate(
            angle: 0.2,
            child: Container(
              width: size,
              height: size,
              margin: EdgeInsets.all(1.h),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(4.h)),
            ),
          ),
          Container(
            width: size,
            height: size,
            margin: EdgeInsets.all(1.h),
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.5.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Key Skills",
                  style: TextStyle(
                    fontSize: 16.5.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: skills
                            .map((e) => Padding(
                                  padding: EdgeInsets.symmetric(vertical: .2.h),
                                  child: Text(
                                    e,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                    SizedBox(width: 1.w),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: moreSkills
                            .map((e) => Padding(
                                  padding: EdgeInsets.symmetric(vertical: .2.h),
                                  child: Text(
                                    e,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
