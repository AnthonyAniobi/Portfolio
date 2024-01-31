import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_strings.dart';
import 'package:portfolio/widgets/app_text.dart';
import 'package:portfolio/widgets/back_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  static const String routeName = 'contact';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const AppBackButton(),
            SizedBox(width: 3.w),
            AppText.sp20(contact).w100.white,
          ],
        ),
      ],
    );
  }
}
