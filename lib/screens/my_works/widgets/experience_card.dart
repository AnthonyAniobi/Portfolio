import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_sizes.dart';
import 'package:portfolio/util/constants/app_text_style.dart';
import 'package:portfolio/util/models/my_works_provider.dart';
import 'package:portfolio/util/models/project_model.dart';
import 'package:portfolio/util/models/theme_color_provider.dart';

class ExperienceCard extends StatefulWidget {
  const ExperienceCard({
    Key? key,
    required this.index,
    this.onTap,
  }) : super(key: key);

  final int index;
  final Function? onTap;

  @override
  State<ExperienceCard> createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
  bool isHover = false;
  late ProjectModel project;
  @override
  void initState() {
    super.initState();
    project = ProjectModel.all[widget.index];
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        MyWorksProvider.of(context, listen: false).updateIndex(widget.index);
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Container(
        width: AppSizes.skillModelSize(context),
        height: AppSizes.skillModelSize(context),
        margin: EdgeInsets.all(AppSizes.buttonRadius(context)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.buttonRadius(context)),
            image: DecorationImage(
              colorFilter:
                  widget.index == MyWorksProvider.of(context).selectedIndex
                      ? null
                      : ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.darken),
              image: NetworkImage(project.imageUrl),
              fit: BoxFit.cover,
            ),
            border: isHover
                ? Border.all(
                    width: AppSizes.buttonRadius(context) / 2,
                    color: AppColors.primaryColors[
                        ThemeColorProvider.of(context).selectedIndex])
                : null,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: AppSizes.buttonRadius(context) / 2,
                  offset: const Offset(0, 1))
            ]),
        child: Center(
          child: widget.index == MyWorksProvider.of(context).selectedIndex
              ? null
              : Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.buttonRadius(context)),
                  child: Text(
                    project.name,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.medium(context,
                        color: isHover
                            ? AppColors.primaryColors[
                                ThemeColorProvider.of(context).selectedIndex]
                            : Colors.white),
                  ),
                ),
        ),
      ),
    );
  }
}
