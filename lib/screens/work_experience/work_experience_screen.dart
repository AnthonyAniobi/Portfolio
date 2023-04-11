import 'package:flutter/material.dart';
import 'package:portfolio/screens/work_experience/widgets/experience_card.dart';
import 'package:portfolio/util/models/experience_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WorkExperienceScreen extends StatelessWidget {
  const WorkExperienceScreen({super.key});

  static String routeName = '/experience';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            "Work Experience",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily: 'AbrilFatface',
            ),
          ),
          Text(
            "My work exprience",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily: 'AbrilFatface',
            ),
          ),
          SizedBox(height: 1.h),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) =>
                    ExperienceCard(experience: Experience.all[index]),
                separatorBuilder: (context, index) => RotatedBox(
                      quarterTurns: 1,
                      child: Image.asset(
                        'assets/images/next.png',
                        width: 5.h,
                        color: Colors.white,
                      ),
                    ),
                itemCount: Experience.all.length),
          ),
        ],
      ),
    );
  }
}
