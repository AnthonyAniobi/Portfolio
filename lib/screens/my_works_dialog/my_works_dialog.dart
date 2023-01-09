import 'package:flutter/material.dart';
import 'package:portfolio/screens/my_works/widgets/experience_card.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_text_style.dart';
import 'package:portfolio/util/models/my_works_provider.dart';
import 'package:portfolio/util/models/project_model.dart';
import 'package:portfolio/util/models/theme_color_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWorksDialog extends StatelessWidget {
  const MyWorksDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColorProvider.of(context).secondaryColor(),
        body: GridView.builder(
            itemCount: ProjectModel.all.length,
            // itemCount: 20,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300),
            itemBuilder: (context, index) {
              return ExperienceCard(
                index: index,
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return _dialogWidget(context, index);
                      });
                },
              );
            }));
  }

  Widget _dialogWidget(BuildContext context, int index) {
    ProjectModel project = ProjectModel.all[index];
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(project.imageUrl), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.cancel,
                      color: Colors.white,
                    )),
              ],
            ),
            const Spacer(),
            Container(
              color: Colors.black.withOpacity(0.5),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    project.name,
                    style: AppTextStyle.bodyTitle(context, color: Colors.white),
                  ),
                  Text(
                    project.description,
                    style: AppTextStyle.medium(context, color: Colors.white),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchUrl(Uri(path: project.itemUrl));
                    },
                    child: Text(
                      'Link',
                      style: AppTextStyle.medium(context,
                          color: AppColors.primaryColors[1],
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
