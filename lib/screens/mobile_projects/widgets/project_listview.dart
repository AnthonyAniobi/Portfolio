import 'package:flutter/material.dart';
import 'package:portfolio/screens/mobile_projects/data/mobile_project.dart';

import 'package:portfolio/widgets/app_text.dart';

class ProjectListview extends StatelessWidget {
  const ProjectListview({
    super.key,
    this.project,
  });

  final MobileProject? project;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return AspectRatio(
          aspectRatio: 2,
          child: Container(
            child: Column(
              children: [
                AppText.sp16("Title").w300.white,
              ],
            ),
          ),
        );
      },
    );
  }
}
