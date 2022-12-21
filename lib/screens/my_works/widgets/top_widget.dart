import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_text_style.dart';
import 'package:portfolio/util/models/theme_color_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: const AssetImage('assets/naruto.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.black.withOpacity(0.5),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Title',
                    style: AppTextStyle.bodyTitle(context, color: Colors.white),
                  ),
                  Text(
                    'description',
                    style: AppTextStyle.medium(context, color: Colors.white),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchUrl(Uri(path: 'https://www.google.com'));
                    },
                    child: Text(
                      'Link',
                      style: AppTextStyle.medium(context,
                          color: AppColors.primaryColors[
                              ThemeColorProvider.of(context).selectedIndex],
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
