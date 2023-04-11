import 'package:flutter/material.dart';
import 'package:portfolio/util/models/education_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class EducationInfo extends StatelessWidget {
  const EducationInfo({
    Key? key,
    required this.education,
  }) : super(key: key);

  final Education education;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h),
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(1.h)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(TextSpan(
              text: education.school,
              style: TextStyle(fontSize: 16.sp, fontFamily: 'AbrilFatface'),
              children: [
                if (education.certificateUrl != null)
                  TextSpan(
                    text: "  (Online)",
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: 'AbrilFatface',
                        color: Colors.grey),
                  )
              ])),
          Text.rich(
            TextSpan(
                text: education.course,
                style: TextStyle(fontSize: 12.sp),
                children: [
                  TextSpan(
                      text: "   ${education.grade}",
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w700)),
                ]),
          ),
          if (education.certificateUrl != null)
            InkWell(
              onTap: () {
                launchUrl(Uri.parse(education.certificateUrl!));
              },
              child: Text(
                "Certificate",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
