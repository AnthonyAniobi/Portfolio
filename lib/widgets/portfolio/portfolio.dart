import 'package:flutter/material.dart';
import 'package:portfolio/util/constants/app_images.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          // mainAxisExtent: 10,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.2,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(AppImages.codeBg), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(5, 5),
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 8,
                )
              ],
            ),
            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(8),
            //   child: Image.asset(
            //     AppImages.codeBg,
            //     width: double.maxFinite,
            //     height: double.maxFinite,
            //     fit: BoxFit.cover,
            //   ),
            // ),
          );
        },
      ),
    );
  }
}
