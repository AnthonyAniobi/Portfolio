import 'package:flutter/material.dart';
import 'package:portfolio/util/app_enums.dart';
import 'package:portfolio/util/app_extensions.dart';
import 'package:portfolio/util/app_router.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/models/experience_model.dart';
import 'package:portfolio/util/models/image_link_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key, required this.experience});

  final Experience experience;

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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2.w),
      ),
      margin: EdgeInsets.symmetric(horizontal: margin, vertical: 2.h),
      child: ExpansionTile(
        initiallyExpanded: true,
        title: Text(
          experience.job,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontFamily: 'AbrilFatface',
          ),
        ),
        subtitle: Text(experience.company,
            style: TextStyle(fontSize: 13.sp, color: Colors.black)),
        children: [
          ResponsibilitiesTile(experience: experience),
          if (experience.links.isNotEmpty)
            ResultsTile(
              results: experience.links,
            )
        ],
      ),
    );
  }
}

class ResponsibilitiesTile extends StatelessWidget {
  const ResponsibilitiesTile({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Responsibilities",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                decoration: TextDecoration.underline),
          ),
          ...experience.description
              .map((e) => Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 1.h,
                      ),
                      SizedBox(width: 2.h),
                      Text(
                        e,
                        style: TextStyle(
                          fontSize: 13.5.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ))
              .toList(),
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}

class ResultsTile extends StatelessWidget {
  const ResultsTile({super.key, required this.results});
  final List<ImageLinkModel> results;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Projects",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                decoration: TextDecoration.underline),
          ),
          Row(),
          Wrap(
            children: results
                .map((e) => e.toWidget(() {
                      if (e.location == DeployedLocation.preview) {
                        AppRouter.moveTo(
                            "${AppRouter.personalProjects}/${e.imageLink}");
                      } else {
                        launchUrl(Uri.parse(e.imageLink));
                      }
                    }))
                .toList(),
          ),
        ],
      ),
    );
  }
}
