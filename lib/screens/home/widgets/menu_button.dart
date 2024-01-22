import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/num_extension.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final Function onTap;

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      onHover: (bool h) {
        setState(() {
          hovered = h;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 2.spMin.toDouble(),
          vertical: 0.5.spMin.toDouble(),
        ),
        child: IntrinsicWidth(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 0.5.h),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: hovered ? AppColors.gold : AppColors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 0.4.spMin.toDouble(),
                      color: hovered ? AppColors.gold : AppColors.silver,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 0.4.spMin.toDouble(),
                      decoration: BoxDecoration(
                        color: hovered ? null : AppColors.silver,
                        gradient:
                            hovered ? AppColors.goldSilverHorizontal : null,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
