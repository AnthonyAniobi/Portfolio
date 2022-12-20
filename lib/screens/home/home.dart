import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/util/app_router.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_images.dart';
import 'package:portfolio/util/constants/app_sizes.dart';
import 'package:portfolio/util/models/theme_color_provider.dart';
import 'package:portfolio/util/constants/app_text_style.dart';
import 'package:portfolio/widgets/app_buttons.dart';
import 'package:portfolio/widgets/color_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
    return Scaffold(
        body: SizedBox(
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
                Padding(
                  padding: EdgeInsets.only(left: padding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello I am Anthony!',
                        style:
                            AppTextStyle.primary(context, color: Colors.white),
                      ),
                      SizedBox(
                        height: padding,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              'I Build',
                              style: AppTextStyle.title(context,
                                  color: Colors.white),
                            ),
                            SizedBox(width: padding / 4),
                            DefaultTextStyle(
                              style: AppTextStyle.title(context,
                                  color: Colors.white),
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
                      SizedBox(height: padding / 2),
                      Row(
                        children: [
                          AppButtons.primary(
                              title: 'About me',
                              onPressed: () {
                                Navigator.pushNamed(context, AppRouter.about);
                              }),
                          SizedBox(width: padding),
                          AppButtons.primary(
                              title: 'My Works',
                              onPressed: () {
                                Navigator.pushNamed(context, AppRouter.myWorks);
                              }),
                        ],
                      )
                    ],
                  ),
                ),
                const Align(
                  alignment: Alignment(0.98, 0),
                  child: ColorPickerWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
