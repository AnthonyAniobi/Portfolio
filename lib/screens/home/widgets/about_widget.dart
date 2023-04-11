import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

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
          SizedBox(height: 2.5.h),
          Text(
            "Senior Mobile Developer",
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'AbrilFatface'),
          ),
          SizedBox(height: 2.h),
          Text(
            """
5 years experience as a programmer with 4 years as a mobile developer with experience building both native and crossplatform mobile applications.
I am conversant with building native applications in Kotlin and Swift as well as in crossplatform framework like flutter.
""",
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
