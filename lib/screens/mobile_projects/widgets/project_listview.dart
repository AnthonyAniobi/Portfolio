import 'package:flutter/material.dart';
import 'package:portfolio/screens/mobile_projects/data/mobile_project.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/num_extension.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 1.spMin.toDouble(),
                  color: index % 2 == 0 ? Colors.transparent : AppColors.gold,
                ),
                right: BorderSide(
                  width: 1.spMin.toDouble(),
                  color: index % 2 != 0 ? Colors.transparent : AppColors.gold,
                ),
                bottom: BorderSide(
                    width: 1.spMin.toDouble(), color: AppColors.gold),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: index % 2 == 1 ? null : -2.w,
                  left: index % 2 == 0 ? null : -2.w,
                  bottom: -2.w,
                  child: Container(
                    width: 10.w,
                    height: 10.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/coding_image.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
