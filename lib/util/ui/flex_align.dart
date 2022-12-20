import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_sizes.dart';

class FlexAlign {
  /// list of widgets are aligned vertically on tablet and mobile but
  /// horizontal on desktop
  static Widget tabletVertical(BuildContext context, List<Widget> children) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < AppSizes.maxTablet) {
        return _align(axis: Axis.vertical, children: children);
      } else {
        return _align(axis: Axis.horizontal, children: children);
      }
    });
  }

  /// list of widgets are aligned vertical only on mobile but horizontally
  /// on tablet and desktop
  static Widget mobileVertical(BuildContext context, List<Widget> children) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < AppSizes.maxTablet) {
        return _align(axis: Axis.vertical, children: children);
      } else {
        return _align(axis: Axis.horizontal, children: children);
      }
    });
  }

  static Flex _align({required Axis axis, required List<Widget> children}) {
    return axis == Axis.horizontal
        ? Row(children: children)
        : Column(children: children);
  }
}
