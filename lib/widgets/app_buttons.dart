import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_sizes.dart';
import 'package:portfolio/util/constants/app_text_style.dart';
import 'package:portfolio/util/models/theme_color_provider.dart';

class AppButtons {
  static Widget primary({required String title, required Function onPressed}) =>
      _PrimaryButton(title: title, onPressed: onPressed);
}

class _PrimaryButton extends StatefulWidget {
  const _PrimaryButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final Function onPressed;

  @override
  State<_PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<_PrimaryButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onPressed();
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Container(
        width: AppSizes.bigButtonWidth(context),
        height: AppSizes.bigButtonHeight(context),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.buttonRadius(context)),
            color: isHover
                ? AppColors
                    .primaryColors[ThemeColorProvider.of(context).selectedIndex]
                : AppColors.secondaryColors[
                    ThemeColorProvider.of(context).selectedIndex],
            boxShadow: [
              BoxShadow(
                  color: AppColors.primaryColors[
                          ThemeColorProvider.of(context).selectedIndex]
                      .withOpacity(0.5),
                  blurRadius: 5,
                  offset: const Offset(0, 0.2))
            ]),
        child: Text(
          widget.title,
          style: AppTextStyle.bodyTitle(context,
              color: isHover ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}

class _SecondaryButton extends StatelessWidget {
  const _SecondaryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: AppSizes.bigButtonWidth(context),
        height: AppSizes.bigButtonHeight(context),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.buttonRadius(context)),
            color: Colors.white.withOpacity(0.5),
            boxShadow: [
              BoxShadow(
                  color: AppColors.primaryColors[
                          ThemeColorProvider.of(context).selectedIndex]
                      .withOpacity(0.5),
                  blurRadius: 5,
                  offset: const Offset(0, 0.2))
            ],
            border: Border.all(
                width: AppSizes.buttonRadius(context) / 2,
                color: AppColors.primaryColors[
                    ThemeColorProvider.of(context).selectedIndex])),
        child: Text(
          'About me',
          style: AppTextStyle.bodyTitle(context),
        ),
      ),
    );
  }
}
