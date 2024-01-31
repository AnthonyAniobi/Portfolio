import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/num_extension.dart';
import 'package:portfolio/widgets/app_text.dart';
import 'package:portfolio/widgets/folder_painter.dart';

class OpensourceItemWidget extends StatelessWidget {
  const OpensourceItemWidget({
    super.key,
    required this.onTap,
    this.opened = false,
  });

  final bool opened;
  final Function onTap;

  static const Duration duration = Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    final double leftSpace = 5.spMin.toDouble();
    final double topSpace = 10.spMin.toDouble();
    final double cornerRadius = 2.spMin.toDouble();
    return InkWell(
      onTap: () {
        onTap();
      },
      splashColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(
          right: 2.spMin.toDouble(),
        ),
        child: Column(
          children: [
            AppText.sp16("Click to Open")
                .color(opened ? Colors.transparent : Colors.white),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: leftSpace,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      padding: EdgeInsets.all(2.spMin.toDouble()),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(cornerRadius),
                        color: AppColors.white,
                      ),
                      child: Column(
                        children: [
                          AppText.sp16("Working on Something"),
                          SizedBox(
                            height: 2.spMin.toDouble(),
                          )
                        ],
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: duration,
                    top: opened ? 50.spMax.toDouble() : topSpace,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: CustomPaint(
                      painter: FolderPainter(
                          color: AppColors.gold,
                          leftSpace: leftSpace,
                          cornerRadius: cornerRadius),
                      child: const SizedBox(
                        width: double.maxFinite,
                        height: double.maxFinite,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
