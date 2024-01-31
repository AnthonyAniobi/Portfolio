import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_strings.dart';
import 'package:portfolio/widgets/app_text.dart';
import 'package:portfolio/widgets/back_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  static const String routeName = 'video';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const AppBackButton(),
            SizedBox(width: 3.w),
            AppText.sp20(videos).w100.white,
          ],
        ),
      ],
    );
  }
}
