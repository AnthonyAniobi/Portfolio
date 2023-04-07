import 'package:flutter/material.dart';
import 'package:portfolio/screens/education/widgets/education_info.dart';
import 'package:portfolio/util/models/education_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EducationCard extends StatelessWidget {
  const EducationCard(
      {super.key, required this.leftSide, required this.education});
  final bool leftSide;
  final Education education;

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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: margin),
      child: Row(
        children: [
          if (leftSide) ...[
            Spacer(),
            EducationInfo(
              education: education,
            )
          ],
          Container(
            width: 20.h,
            height: 20.h,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
          ),
          if (!leftSide) ...[
            EducationInfo(
              education: education,
            ),
            Spacer()
          ],
        ],
      ),
    );
  }
}
