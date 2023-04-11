import 'package:flutter/material.dart';
import 'package:portfolio/screens/personal_projects/widgets/project_description.dart';
import 'package:portfolio/util/app_router.dart';
import 'package:portfolio/util/models/project_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {super.key, required this.leftSide, required this.projectIndex});
  final bool leftSide;
  final int projectIndex;

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
      margin: EdgeInsets.symmetric(horizontal: margin, vertical: 2.h),
      // height: height,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(3.w)),
      child: AspectRatio(
        aspectRatio: 25 / 9,
        child: InkWell(
          onTap: () {
            AppRouter.moveTo('${AppRouter.personalProjects}/$projectIndex');
          },
          child: Row(
            children: [
              if (leftSide)
                ProjectDescription(project: ProjectModel.all[projectIndex]),
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: leftSide
                          ? BorderRadius.horizontal(right: Radius.circular(3.w))
                          : BorderRadius.horizontal(
                              left: Radius.circular(3.w))),
                ),
              ),
              if (!leftSide)
                ProjectDescription(project: ProjectModel.all[projectIndex]),
            ],
          ),
        ),
      ),
    );
  }
}
