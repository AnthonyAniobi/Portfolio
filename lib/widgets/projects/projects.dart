import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_images.dart';
import 'package:portfolio/util/models/project_model.dart';
import 'package:portfolio/util/models/theme_color_provider.dart';
import 'package:portfolio/util/ui/text_styles.dart';

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
          return _projectCard(context, project);
        },
      ),
    );
  }

  Container _projectCard(BuildContext context, ProjectModel project) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                ThemeColorProvider.of(context).color.withOpacity(0.2),
                BlendMode.color),
            image: NetworkImage(project.imageUrl),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            // offset: const Offset(5, 5),
            color: Colors.black.withOpacity(0.25),
            blurRadius: 8,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.black.withOpacity(0.7),
              child: Text(
                project.name,
                textAlign: TextAlign.center,
                style: AppTextStyle.primary(context, color: Colors.white),
              ),
            ),
          ],
        ),
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
  }
}
