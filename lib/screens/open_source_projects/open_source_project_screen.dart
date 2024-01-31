import 'package:flutter/material.dart';
import 'package:portfolio/screens/open_source_projects/widgets/opensource_item_widget.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_strings.dart';
import 'package:portfolio/util/num_extension.dart';
import 'package:portfolio/widgets/app_layout_builder.dart';
import 'package:portfolio/widgets/app_text.dart';
import 'package:portfolio/widgets/back_button.dart';
import 'package:portfolio/widgets/folder_painter.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class OpenSourceProjectScreen extends StatefulWidget {
  const OpenSourceProjectScreen({super.key});

  static const String routeName = 'open_source';

  @override
  State<OpenSourceProjectScreen> createState() =>
      _OpenSourceProjectScreenState();
}

class _OpenSourceProjectScreenState extends State<OpenSourceProjectScreen> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const AppBackButton(),
            SizedBox(width: 3.w),
            AppText.sp20(openSourceProjects).w100.white,
          ],
        ),
        SizedBox(height: 2.h),
        Expanded(
          child: AppLayoutBuilder(
            mobile: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0),
                itemBuilder: (context, index) {
                  return AspectRatio(
                      aspectRatio: 1,
                      child: OpensourceItemWidget(
                        opened: index == selectedIndex,
                        onTap: () {
                          click(index);
                        },
                      ));
                }),
            tablet: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 500,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return OpensourceItemWidget(
                  opened: index == selectedIndex,
                  onTap: () {
                    click(index);
                  },
                );
              },
            ),
            desktop: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return OpensourceItemWidget(
                  opened: index == selectedIndex,
                  onTap: () {
                    click(index);
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  bool isSelected(int index) {
    return index == selectedIndex;
  }

  void click(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
