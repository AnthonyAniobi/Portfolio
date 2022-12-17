import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_sizes.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < AppSizes.maxTablet) {
        return aboutAlign(axis: Axis.vertical, children: []);
      } else {
        return aboutAlign(axis: Axis.horizontal, children: []);
      }
    });
  }

  Flex aboutAlign({required Axis axis, required List<Widget> children}) {
    return Flex(direction: axis, children: children);
  }
}
