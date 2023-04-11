import 'package:flutter/material.dart';
import 'package:portfolio/widgets/top_navbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF03035A), Color(0xFF2443DE)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.4, -0.4),
            child: Container(
              width: 15.w,
              height: 15.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 3, 3, 122).withOpacity(0.5),
                      const Color(0xFF365BF3).withOpacity(0.5)
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  )),
            ),
          ),
          SizedBox(
            width: 100.w,
            height: 100.h,
            child: Column(
              children: [
                SizedBox(height: 2.w),
                TopNavbar(),
                Expanded(child: child),
              ],
            ),
          )
        ],
      ),
    );
  }
}
