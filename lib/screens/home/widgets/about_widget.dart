import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, I'm Anthony Aniobi",
            style: TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'AbrilFatface'),
          ),
          SizedBox(height: 3.h),
          Text(
            "Senior Mobile Developer",
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'AbrilFatface'),
          ),
          SizedBox(height: 3.h),
          Text(
            "Senior Mobile Developer",
            style: TextStyle(
              fontSize: 12.5.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
