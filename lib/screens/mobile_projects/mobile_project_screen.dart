import 'package:flutter/material.dart';
import 'package:portfolio/screens/mobile_projects/widgets/project_listview.dart';
import 'package:portfolio/screens/mobile_projects/widgets/project_view_widget.dart';
import 'package:portfolio/util/num_extension.dart';
import 'package:portfolio/widgets/app_layout_builder.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class MobileProjectScreen extends StatelessWidget {
  const MobileProjectScreen({super.key});

  static String routeName = "mobile_project";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: AppLayoutBuilder(
        mobile: ProjectListview(),
        tablet: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.spMin.toDouble()),
          child: Row(
            children: [
              ProjectViewWidget(),
              SizedBox(width: 4.w),
              SizedBox(
                width: 40.w,
                child: ProjectListview(),
              )
            ],
          ),
        ),
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ProjectViewWidget(),
            SizedBox(
              width: 35.w,
              child: ProjectListview(),
            )
          ],
        ),
      ),
    );
  }
}
