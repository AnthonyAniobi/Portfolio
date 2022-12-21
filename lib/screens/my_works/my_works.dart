import 'package:flutter/material.dart';
import 'package:portfolio/screens/my_works/widgets/buttom_widget.dart';
import 'package:portfolio/screens/my_works/widgets/experience_card.dart';
import 'package:portfolio/screens/my_works/widgets/top_widget.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_sizes.dart';
import 'package:portfolio/util/models/project_model.dart';
import 'package:portfolio/util/models/theme_color_provider.dart';
import 'package:portfolio/util/ui/flex_align.dart';
import 'package:portfolio/widgets/color_picker.dart';

class MyWorksScreen extends StatelessWidget {
  const MyWorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: LayoutBuilder(
                builder: (context, contraints) {
                  if (contraints.maxWidth < AppSizes.maxTablet) {
                    return Column(
                      children: [
                        const Expanded(child: TopWidget()),
                        Container(
                          height: AppSizes.skillModelSize(context),
                          color: AppColors.secondaryColors[
                              ThemeColorProvider.of(context).selectedIndex],
                          child: Expanded(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: _buttomWidgets(context),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Row(
                      children: [
                        const Expanded(child: TopWidget()),
                        Container(
                          width: AppSizes.skillModelSize(context),
                          color: AppColors.secondaryColors[
                              ThemeColorProvider.of(context).selectedIndex],
                          child: Expanded(
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: _buttomWidgets(context),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                },
              )),
          const Align(
            alignment: Alignment(0.98, 0),
            child: ColorPickerWidget(),
          )
        ],
      ),
    );
  }

  List<Widget> _buttomWidgets(BuildContext context) {
    return List.generate(
        ProjectModel.all.length,
        (index) => ExperienceCard(
              index: index,
            ));
  }
}
