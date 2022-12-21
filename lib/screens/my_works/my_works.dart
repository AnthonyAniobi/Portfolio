import 'package:flutter/material.dart';
import 'package:portfolio/screens/my_works/widgets/buttom_widget.dart';
import 'package:portfolio/screens/my_works/widgets/top_widget.dart';
import 'package:portfolio/util/constants/app_colors.dart';
import 'package:portfolio/util/constants/app_sizes.dart';
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
                        SizedBox(
                          height: AppSizes.skillModelSize(context),
                          child: const ButtomWidget(),
                        ),
                      ],
                    );
                  } else {
                    return Row(
                      children: [
                        const Expanded(child: TopWidget()),
                        SizedBox(
                          width: AppSizes.skillModelSize(context),
                          child: const ButtomWidget(),
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
}
