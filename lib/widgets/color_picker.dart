import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/models/theme_color_provider.dart';

class ColorPickerWidget extends StatelessWidget {
  const ColorPickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(AppColors.primaryColors.length,
          (index) => colorCircles(context, index)),
    );
  }

  Widget colorCircles(BuildContext context, int index) {
    double size = MediaQuery.of(context).size.width;
    if (size < 500) {
      size = size / 10;
    } else {
      size = size / 20;
    }
    return InkWell(
      onTap: () {
        ThemeColorProvider.of(context, listen: false).setColorIndex(index);
      },
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          border: ThemeColorProvider.of(context).selectedIndex == index
              ? Border.all(
                  width: 7,
                  color: Colors.white,
                  strokeAlign: StrokeAlign.outside)
              : null,
          shape: BoxShape.circle,
          color: AppColors.primaryColors[index],
        ),
      ),
    );
  }
}
