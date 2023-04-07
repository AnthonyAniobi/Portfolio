import 'package:flutter/material.dart';
import 'package:portfolio/screens/education/widgets/education_card.dart';
import 'package:portfolio/screens/education/widgets/education_info.dart';
import 'package:portfolio/util/models/education_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            "Education",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily: 'AbrilFatface',
            ),
          ),
          SizedBox(height: 1.h),
          Expanded(
            child: ListView.builder(
                itemCount: Education.all().length,
                itemBuilder: (context, index) => EducationCard(
                      leftSide: index % 2 == 0,
                      education: Education.all()[index],
                    )),
          ),
        ],
      ),
    );
  }
}
