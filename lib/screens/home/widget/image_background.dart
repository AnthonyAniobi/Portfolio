import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_images.dart';

class ImageBackground extends StatelessWidget {
  const ImageBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImages.codeBg);
  }
}
