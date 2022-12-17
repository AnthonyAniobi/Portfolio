import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_images.dart';
import 'package:portfolio/util/constants/app_sizes.dart';

const String _image = AppImages.codeBg;

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < AppSizes.maxMobile) {
        // mobile header
        return const _HeaderDesign(
          aspectRatio: 1,
          padding: 20,
          fontSize: 40,
        );
      } else if (constraints.maxWidth < AppSizes.maxTablet) {
        // tablet header
        return const _HeaderDesign(
          aspectRatio: 2,
          padding: 50,
          fontSize: 50,
        );
      } else {
        // desktop header
        return const _HeaderDesign(
          aspectRatio: 2.2,
          padding: 200,
          fontSize: 100,
        );
      }
    });
  }
}

class _HeaderDesign extends StatelessWidget {
  final double aspectRatio;
  final double padding;
  final double fontSize;
  const _HeaderDesign({
    Key? key,
    required this.aspectRatio,
    required this.padding,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(padding, padding, 0, padding),
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.blue.withOpacity(0.7), BlendMode.color),
                image: const AssetImage(_image),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  'I Build',
                  style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white),
                ),
                SizedBox(width: padding / 4),
                DefaultTextStyle(
                  style: TextStyle(
                      fontSize: fontSize,
                      fontFamily: 'Horizon',
                      color: AppColors.white),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      RotateAnimatedText('ANDROID'),
                      RotateAnimatedText('IOS'),
                      RotateAnimatedText('FLUTTER'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
