import 'package:flutter/material.dart';
import 'package:portfolio/util/models/experience_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key, required this.experience});

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    double margin;
    if (Device.width < 500) {
      margin = 4.w;
    } else if (Device.height >= 500 && Device.width < 750) {
      margin = 10.w;
    } else {
      margin = 12.w;
    }
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2.w),
      ),
      margin: EdgeInsets.symmetric(horizontal: margin, vertical: 2.h),
      child: ExpansionTile(
        title: Text(experience.job),
        subtitle: Text(experience.company),
        children: [Text(experience.description)],
      ),
    );
  }
}
