import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_text_style.dart';
import 'package:portfolio/util/models/my_works_provider.dart';
import 'package:portfolio/util/models/project_model.dart';
import 'package:portfolio/util/models/theme_color_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ProjectModel project =
        ProjectModel.all[MyWorksProvider.of(context).selectedIndex];
    return InkWell(
      onTap: () async {
        await launchUrl(Uri.https(project.itemUrl));
      },
      child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(project.imageUrl))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.black.withOpacity(0.7),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      project.name,
                      style:
                          AppTextStyle.bodyTitle(context, color: Colors.white),
                    ),
                    Text(
                      project.description,
                      style: AppTextStyle.medium(context, color: Colors.white),
                    ),
                    InkWell(
                      onTap: () async {
                        await launchUrl(Uri.https(project.itemUrl));
                      },
                      child: Text(
                        'Link',
                        style: AppTextStyle.medium(context,
                            color: AppColors.primaryColors[
                                ThemeColorProvider.of(context).selectedIndex],
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
