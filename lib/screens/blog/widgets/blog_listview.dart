import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/num_extension.dart';
import 'package:portfolio/widgets/design_line_painter.dart';

class BlogListView extends StatelessWidget {
  const BlogListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2.spMin.toDouble(),
          ),
          child: CustomPaint(
              painter: linePainter(index % 2 == 0),
              child: SizedBox(
                height: 30.spMax.toDouble(),
              )),
        );
      },
    );
  }

  CustomPainter linePainter(bool isLeft) {
    return isLeft
        ? LeftLineDesign(
            color: AppColors.gold,
            circleRadius: 1.spMin.toDouble(),
            lineWidth: 0.5.spMin.toDouble(),
            curveRadius: 5.spMin.toDouble(),
          )
        : RightLineDesign(
            color: AppColors.gold,
            circleRadius: 1.spMin.toDouble(),
            lineWidth: 0.5.spMin.toDouble(),
            curveRadius: 5.spMin.toDouble(),
          );
  }
}
