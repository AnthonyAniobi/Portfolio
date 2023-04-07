import 'package:flutter/material.dart';
import 'package:portfolio/screens/personal_projects/widgets/project_card.dart';
import 'package:portfolio/util/models/project_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PersonalProjectsScreen extends StatelessWidget {
  const PersonalProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            "Personal Projects",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily: 'AbrilFatface',
            ),
          ),
          Text(
            "List of Projects",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily: 'AbrilFatface',
            ),
          ),
          SizedBox(height: 1.h),
          Expanded(
            child: ListView.builder(
                itemCount: ProjectModel.all.length,
                itemBuilder: (context, index) => ProjectCard(
                      leftSide: index % 2 == 0,
                      project: ProjectModel.all[index],
                    )),
          ),
        ],
      ),
    );
  }
}
