import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_sizes.dart';
import 'package:portfolio/util/models/skill_category.dart';
import 'package:portfolio/util/ui/flex_align.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < 700) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children:
              SkillCategory.category.map((e) => skillCategory(e)).toList(),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: SkillCategory.category
                .map((e) => Expanded(child: skillCategory(e)))
                .toList(),
          ),
        );
      }
    });
  }

  Widget skillCategory(SkillCategory category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(category.name),
          const SizedBox(height: 20),
          ...category.skills
              .map((e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(e.name),
                      Container(
                        width: double.maxFinite,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ))
              .toList(),
        ],
      ),
    );
  }
}
