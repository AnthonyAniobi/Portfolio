import 'package:flutter/material.dart';
import 'package:portfolio/screens/blog/widgets/blog_listview.dart';
import 'package:portfolio/util/constants/app_strings.dart';
import 'package:portfolio/widgets/app_layout_builder.dart';
import 'package:portfolio/widgets/app_text.dart';
import 'package:portfolio/widgets/back_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  static const String routeName = 'blog';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const AppBackButton(),
            SizedBox(width: 3.w),
            AppText.sp20(blog).w100.white,
          ],
        ),
        Expanded(
            child: AppLayoutBuilder(
                mobile: const BlogListView(),
                tablet: const BlogListView(),
                desktop: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: const BlogListView(),
                )))
      ],
    );
  }
}
