import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_strings.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          welcome,
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.w100,
            color: Colors.white,
          ),
        ),
        IntrinsicHeight(
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                      width: 6.sp, height: 2.h, color: AppColors.gold),
                ),
                Expanded(
                  child: Container(
                    width: 6.sp,
                    height: 2.h,
                    decoration: const BoxDecoration(
                      gradient: AppColors.goldSilverVertical,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10.sp),
            Expanded(
              child: Text(
                homeMsg,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 12.5.sp,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
