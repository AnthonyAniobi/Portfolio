import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:portfolio/screens/personal_projects/single_project_screen.dart';
import 'package:portfolio/screens/personal_projects/widgets/project_card.dart';
import 'package:portfolio/util/fluro_router.dart';
import 'package:portfolio/util/models/project_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PersonalProjectsScreen extends StatelessWidget {
  const PersonalProjectsScreen({super.key});

  static String routeName = '/projects';

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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: margin),
              child: SingleChildScrollView(
                child: GridView.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 1.8.w,
                  crossAxisSpacing: 1.8.w,
                  children: ProjectModel.all
                      .mapIndexed((index, project) => InkWell(
                            onTap: () {
                              Flurorouter.moveTo(
                                  "${SingleProjectScreen.routeName}/$index");
                            },
                            child: ProjectTile(
                              project: project,
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isExpanded(int index) {
    return index % 4 == 1 || index % 4 == 2;
  }
}

class ProjectTile extends StatelessWidget {
  const ProjectTile({
    Key? key,
    required this.project,
  }) : super(key: key);

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    double leftShift;
    if (Device.width < 500) {
      leftShift = 6.w;
    } else {
      leftShift = 6.h;
    }
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.h),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: NetworkImage(project.previewImage),
              fit: BoxFit.cover,
              opacity: 0.6),
          borderRadius: BorderRadius.circular(2.h),
        ),
        child: Padding(
          padding: EdgeInsets.only(right: leftShift),
          child: Text(
            project.name,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontFamily: 'AbrilFatface',
            ),
          ),
          // child: Image.network(project.previewImage),
        ));
  }
}
