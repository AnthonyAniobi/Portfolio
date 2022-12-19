import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_images.dart';
import 'package:portfolio/util/models/project_model.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          // mainAxisExtent: 10,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.2,
        ),
        itemCount: ProjectModel.all.length,
        itemBuilder: (context, index) {
          ProjectModel project = ProjectModel.all[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: NetworkImage(project.imageUrl), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  // offset: const Offset(5, 5),
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 8,
                )
              ],
            ),
            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(8),
            //   child: Image.asset(
            //     AppImages.codeBg,
            //     width: double.maxFinite,
            //     height: double.maxFinite,
            //     fit: BoxFit.cover,
            //   ),
            // ),
          );
        },
      ),
    );
  }
}
