import 'package:collection/collection.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_images.dart';
import 'package:portfolio/util/constants/app_sizes.dart';
import 'package:portfolio/util/models/theme_color_provider.dart';
// import 'package:portfolio/util/models/theme_color_provider.dart';
import 'package:portfolio/util/constants/app_text_style.dart';

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
        );
      } else if (constraints.maxWidth < AppSizes.maxTablet) {
        // tablet header
        return const _HeaderDesign(
          aspectRatio: 2,
          padding: 100,
        );
      } else {
        // desktop header
        return const _HeaderDesign(
          aspectRatio: 2.2,
          padding: 200,
        );
      }
    });
  }
}

class _HeaderDesign extends StatelessWidget {
  final double aspectRatio;
  final double padding;
  const _HeaderDesign({
    Key? key,
    required this.aspectRatio,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Stack(
              children: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      ThemeColorProvider.of(context).color.withOpacity(0.7),
                      BlendMode.color),
                  child: Image.network(
                    AppImages.codeBg,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                    alignment: const Alignment(-1, -0.4),
                    child: Text(
                      'Hello I am Anthony!',
                      style: AppTextStyle.primary(context, color: Colors.white),
                    )),
                Align(
                  alignment: Alignment(0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        'I Build',
                        style: AppTextStyle.title(context, color: Colors.white),
                      ),
                      SizedBox(width: padding / 4),
                      DefaultTextStyle(
                        style: AppTextStyle.title(context, color: Colors.white),
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
                Align(
                  alignment: Alignment(0.98, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // children:
                    //     AppColors.primaryColors.mapIndexed(((index, element) {
                    //   return colorCircles(context, index);
                    // })).toList(),
                    children: List.generate(AppColors.primaryColors.length,
                        (index) => colorCircles(context, index)),
                  ),
                ),
                Align(
                  alignment: const Alignment(-1, 1),
                  child: Row(
                    children: [PrimaryButton()],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
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

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.bigButtonWidth(context),
      height: AppSizes.bigButtonHeight(context),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.buttonRadius(context)),
          color: AppColors
              .secondaryColors[ThemeColorProvider.of(context).selectedIndex],
          boxShadow: [
            BoxShadow(
                color: AppColors
                    .primaryColors[ThemeColorProvider.of(context).selectedIndex]
                    .withOpacity(0.5),
                blurRadius: 5,
                offset: const Offset(0, 0.2))
          ]),
      child: Text(
        'About me',
        style: AppTextStyle.bodyTitle(context),
      ),
    );
  }
}
