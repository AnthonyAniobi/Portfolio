import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_sizes.dart';
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
            child: FlexAlign.tabletVertical(context, [
              Expanded(child: Container(color: Colors.red)),
              SizedBox(
                height: AppSizes.skillModelSize(context),
                width: AppSizes.skillModelSize(context),
              )
            ]),
          ),
          const Align(
            alignment: Alignment(0.98, 0),
            child: ColorPickerWidget(),
          )
        ],
      ),
    );
  }
}
