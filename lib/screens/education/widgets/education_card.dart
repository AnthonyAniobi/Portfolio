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
    double circleSize;
    if (Device.width < 500) {
      margin = 4.w;
      circleSize = 15.w;
    } else if (Device.height >= 500 && Device.width < 750) {
      margin = 10.w;
      circleSize = 20.h;
    } else {
      margin = 12.w;
      circleSize = 15.h;
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
            width: circleSize,
            height: circleSize,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(circleSize / 2),
              child: Image.network(
                education.imageUrl,
                fit: BoxFit.scaleDown,
              ),
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
