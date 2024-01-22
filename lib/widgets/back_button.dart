import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/num_extension.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 10.spMin.toDouble(),
        height: 4.5.spMin.toDouble(),
        padding: EdgeInsets.all(1.spMin.toDouble()),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.spMin.toDouble()),
          color: AppColors.gold,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
              size: 2.spMin.toDouble(),
            ),
            Text(
              "Back",
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
