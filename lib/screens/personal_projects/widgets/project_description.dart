import 'package:flutter/material.dart';
import 'package:portfolio/util/models/project_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProjectDescription extends StatelessWidget {
  const ProjectDescription({super.key, required this.project});
  final ProjectModel project;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 1.w, horizontal: 2.w),
      child: Column(
        children: [
          Text(
            project.name,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontFamily: 'AbrilFatface',
            ),
          ),
          Text(
            project.name,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          )
        ],
      ),
    ));
  }
}
