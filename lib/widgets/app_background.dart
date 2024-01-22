import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/num_extension.dart';
import 'package:portfolio/widgets/big_shape_painter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Stack(
          children: [
            Positioned(
              top: 2.spMin.toDouble(),
              left: 2.spMin.toDouble(),
              child: bigCurve(),
            ),
            Positioned(
              bottom: 2.spMin.toDouble(),
              right: 2.spMin.toDouble(),
              child: RotatedBox(
                quarterTurns: 2,
                child: bigCurve(),
              ),
            ),
            // EarthWidget(),
            Positioned(
              top: 5.spMin.toDouble(),
              bottom: 5.spMin.toDouble(),
              left: 5.spMin.toDouble(),
              right: 5.spMin.toDouble(),
              child: child ?? Container(),
            ),
          ],
        ),
      ),
    );
  }

  CustomPaint bigCurve() {
    return CustomPaint(
      painter: ShapePainter(
        gradient: const LinearGradient(
          colors: [AppColors.gold, AppColors.silver],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0, 0.5],
        ),
        cornerRadius: 3.spMin.toDouble(),
        arrowWidth: 2.spMin.toDouble(),
      ),
      child: SizedBox(
        width: 40.w,
        height: 30.h,
      ),
    );
  }
}
